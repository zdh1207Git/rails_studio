module MoviesHelper
  def format_total_gross(movie)
    if movie.flop?
      "<strong style='color:red'>'flop!'</strong>".html_safe
    else
      number_to_currency(movie.total_gross)
    end
  end
  def time_ago(movie)
    if movie.old?
      "very old film."
    end
  end
end
