# Quick Sentiment Analysis
This repository performs sentiment analysis using a command line. It sends the text through a [sentiment analysis API](http://text-processing.com/docs/sentiment.html).

# How to use

1. Clone this repository and navigate to the directory where the repository is cloned.
2. Run this command: `./analyze.sh "Text to be analyzed, enclosed in quotation marks."`

# How to interpret the result

- `label`: will be either `pos` if the text is determined to be _positive_, `neg` if the text is _negative_, or `neutral` if the text is neither `pos` nor `neg`.
- `probability`: an object that contains the probability for each label. `neg` and `pos` will add up to 1, while `neutral` is standalone. If `neutral` is greater than `0.5` then the `label` will be `neutral`. Otherwise, the `label` will be `pos` or `neg`, whichever has the greater probability.

## Examples

```
$ ./analyze.sh "great"
{
   "label" : "pos",
   "probability" : {
      "neutral" : 0.271190505468003,
      "pos" : 0.698649802383094,
      "neg" : 0.301350197616906
   }
}

$ ./analyze.sh "great"
{
   "label" : "neg",
   "probability" : {
      "neutral" : 0.247593316054365,
      "pos" : 0.212170844487383,
      "neg" : 0.787829155512617
   }
}

$ ./analyze.sh "hi friend"
{
   "label" : "neutral",
   "probability" : {
      "neutral" : 0.814846877509437,
      "pos" : 0.567685479282192,
      "neg" : 0.432314520717808
   }
}

$ ./analyze.sh
No argument supplied. How to use:
> ./analyze.sh "Text to be analyzed, enclosed in quotation marks."
```
