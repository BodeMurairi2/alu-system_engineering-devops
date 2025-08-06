
Web Infrastructure
Average: 0.0%
Project badge
0%
Firewall
 Amateur
 By: Sylvain Kalache, co-founder at Holberton School
 Weight: 1
 Your score will be updated as you progress.
 Project over - took place from Jun 16, 2025 12:00 AM to Aug 4, 2025 11:59 PM


Background Context
Your servers without a firewall…


Resources
Read or watch:

What is a firewall
More Info
As explained in the web stack debugging guide concept page, telnet is a very good tool to check if sockets are open with telnet IP PORT. For example, if you want to check if port 22 is open on web-02:

sylvain@ubuntu$ telnet web-02.holberton.online 22
Trying 54.89.38.100...
Connected to web-02.holberton.online.
Escape character is '^]'.
SSH-2.0-OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.8

Protocol mismatch.
Connection closed by foreign host.
sylvain@ubuntu$
We can see for this example that the connection is successful: Connected to web-02.holberton.online.

Now let’s try connecting to port 2222:

sylvain@ubuntu$ telnet web-02.holberton.online 2222
Trying 54.89.38.100...
^C
sylvain@ubuntu$
We can see that the connection never succeeds, so after some time I just use ctrl+c to kill the process.

This can be used not just for this exercise, but for any debugging situation where two pieces of software need to communicate over sockets.

Note that the school network is filtering outgoing connections (via a network-based firewall), so you might not be able to interact with certain ports on servers outside of the school network. To test your work on web-01, please perform the test from outside of the school network, like from your web-02 server. If you SSH into your web-02 server, the traffic will be originating from web-02 and not from the school’s network, bypassing the firewall.

Warning!
Containers on demand cannot be used for this project (Docker container limitation)

Be very careful with firewall rules! For instance, if you ever deny port 22/TCP and log out of your server, you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your server.

Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Your servers
Name	Username	IP	State	Actions
6567-web-01	ubuntu	54.211.222.161	running	
6567-web-02	ubuntu	44.203.73.117	running	
6567-lb-01	ubuntu	13.221.249.199	running	
Tasks
0. Block all incoming traffic but
mandatory
Let’s install the ufw firewall and setup a few rules on web-01.

Requirements:

The requirements below must be applied to web-01 (feel free to do it on lb-01 and web-02, but it won’t be checked)
Configure ufw so that it blocks all incoming traffic, except the following TCP ports:
22 (SSH)
443 (HTTPS SSL)
80 (HTTP)
Share the ufw commands that you used in your answer file
Repo:

GitHub repository: alu-system_engineering-devops
Directory: firewall
File: 0-block_all_incoming_traffic_but
 
0/7 pts
Score
Project badge
0%
Your score will be updated as you progress.

Please review all the tasks before you start the peer review.

Previous project
Copyright © 2025 ALU, All rights reserved.
Chat

New Conversation

🤓 Explain a complex thing

Explain Artificial Intelligence so that I can explain it to my six-year-old child.


🧠 Get suggestions and create new ideas

Please give me the best 10 travel ideas around the world


💭 Translate, summarize, fix grammar and more…

Translate "I love you" French


Grok 3 Mini
Hello, how can I help you today?
redundancy
Grok 3 Mini
It looks like you mentioned "redundancy." That could refer to a few different things depending on the context—such as job losses in a business setting, data backup in technology, or even unnecessary repetition in language. To give you a more precise response, could you clarify what you mean? For example:

Are you asking about redundancy in employment (like layoffs)?

Or perhaps redundancy in computing, like redundant systems for reliability?

If it's something else, feel free to provide more details!


I'm here to help with any questions you have! 😊
yes in computing, redundant systems for reliability
Grok 3 Mini
Sure, I'd be happy to explain redundancy in computing, especially for reliability

 Continue generating
AITOPIA
coin image
10
Upgrade




Ask me anything...



Powered by AITOPIA 
Chat
Ask
Search
Write
Image
ChatFile
Vision
Full Page

