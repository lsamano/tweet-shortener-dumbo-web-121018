# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split
  some_keys = dictionary.keys
  new_tweet = []
  array.each do |word|
    if some_keys.include?(word.downcase)
      new_tweet << dictionary[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    new_tweet = word_substituter(tweet)
    return new_tweet
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length
  end
end
