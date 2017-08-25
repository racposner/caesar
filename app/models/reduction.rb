class Reduction < ApplicationRecord
  Type = GraphQL::ObjectType.define do
    name "Reduction"

    field :projectId, types.ID, property: :project_id
    field :workflowId, !types.ID, property: :workflow_id
    field :subjectId, !types.ID, property: :subject_id
    field :reducerId, types.String, property: :reducer_id

    field :data, Types::JsonType

    field :createdAt, !Types::TimeType, property: :created_at
    field :updatedAt, !Types::TimeType, property: :updated_at
  end

  belongs_to :workflow
  belongs_to :subject
end
