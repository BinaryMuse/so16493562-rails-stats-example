class MemoryController < ApplicationController
  before_filter do
    @memory = MemoryStat.new
  end

  def free
    respond_to do |format|
      format.html
      format.json do
        render json: { memory: { free: @memory.free } }
      end
    end
  end

  def total
    respond_to do |format|
      format.html
      format.json do
        render json: { memory: { total: @memory.total } }
      end
    end
  end
end
