defmodule Distance do
  
  def distance(point1, point2) do
    {:point, x1, y1 } = point1
    {:point, x2, y2 } = point2
    x_dist = x1 - x2
    y_dist = y1 - y2
    
    :math.pow(x_dist, 2) + :math.pow(y_dist, 2)
    |> :math.sqrt()
  end

end
