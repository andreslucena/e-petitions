class EmailDebateOutcomesJob < ActiveJob::Base
  include EmailAllPetitionSignatories

  self.email_delivery_job_class = DeliverDebateOutcomeEmailJob
  self.timestamp_name = 'debate_outcome'
end
