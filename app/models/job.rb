class Job < ApplicationRecord

  def featured_job
    if self.featured
      '<strong>Destaque</strong>'
    end
  end

end
