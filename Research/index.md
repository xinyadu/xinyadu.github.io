---
layout: page
title: Research
share: false
tags: [about, Jekyll, theme, responsive]
modified: 2014-08-08T20:53:07.573882-04:00
comments: true
<!-- image:
  feature: C_6.png
  credit: WeGraphics
  creditlink: http://wegraphics.net/downloads/free-ultimate-blurred-background-pack/ -->
---
<!-- 
Minimal Mistakes is responsive Jekyll theme with large featured images and solid typography. As the name implies the styling is fairly minimal to make it easier for you to build on top of.   -->

 ***

### RNN-based sequence learning for text generation

* Trying to incorprate paragraph-level information into text generation.
* Baseline implemented in Tensorflow, final model implemented with Torch7.
* Results submitted to ACL'17.


### Deep Learning for Fine-grained Opinion Extraction  
_Research intern at  Cornell NLP group,  supervised by Prof. [<span style="color:blue">Claire Cardie</span>](http://www.cs.cornell.edu/home/cardie/)._ 
<br />
<br />
![op2](http://www.cs.cmu.edu/~bishan/projects/op_example_2.png)
<br />
![op1](http://www.cs.cmu.edu/~bishan/projects/op_example_1.png) 

* Proposed to evaluate labeling sequences using **sentence-level log-likelihood (SLL)** at output layer of deep recurrent neural networks. Empirical results showed around 4% improvement on F-measure of opinion target extraction and more accurate n-best ranking for labeling sequences.

* Proposed to use deep recurrent neural networks to produce the n-best labeling sequences which can be fed into integer linear programming (ILP) system for joint inference.  

* Designed heuristic rules using dependency parse tree to eliminate inappropriate opinion candidates during inference. Empirical results showed higher precision and higher F-measure. 

* Building an ensemble system using the above algorithm to participate in Belief and Sentiment Evaluation 2015 **(BeSt2015)**.

 <!-- #[Technical Report -->


<!-- * Responsive templates. Looking good on mobile, tablet, and desktop.
* Gracefully degrading in older browsers. Compatible with Internet Explorer 8+ and all modern browsers.
* Minimal embellishments -- content first.
* Optional large feature images for posts and pages.
* Simple and clear permalink structure.
* [Custom 404 page](http://mmistakes.github.io/minimal-mistakes/404.html) to get you started.
* Support for Disqus Comments

<a markdown="0" href="{{ site.url }}/theme-setup" class="btn">Install Minimal Mistakes Theme</a>
 -->

 ***

### Online Auction Mechanism Design with Time-varying Value
_Research assistant at  Advanced Network Laboratory, Shanghai Jiao Tong University_       

* Proposed the new scenario in online auction mechanism design where agent’s value may vary over time.

* Extended the classic payment determination algorithm (Myerson) to fit the new model. Proposed mechansim ensured strategy-proofness and achieved constant competitive ratio.

* <a href="/papers/techPaper.pdf" target="_blank"><span style="color:blue">[Technical Paper]</span></a>


