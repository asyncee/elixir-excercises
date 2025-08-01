defmodule Counter do

  def main() do
    count_words("Pick up the bones and set them on fire, follow the smoke going higher and higher")
  end
  
  defp count_words(str) do
    str |> String.split() |> count_words(%{})
  end

  defp count_words([word | words], acc) do
    acc = Map.update(acc, word, 1, &(&1 + 1))
    #acc = case Map.fetch(acc, word) do
    #  {:ok, counter} -> Map.put(acc, word, counter + 1)
    #  :error -> Map.put(acc, word, 1)
    #end
    count_words(words, acc)
  end

  defp count_words([], acc) do
    acc
  end

end
