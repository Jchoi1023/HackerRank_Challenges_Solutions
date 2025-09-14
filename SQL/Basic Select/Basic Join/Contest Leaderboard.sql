/*
https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
*/

select t.hacker_id, t.name, SUM(t.max_score) as total_score from(
    select h.hacker_id, h.name, s.challenge_id, MAX(s.score) as max_score from hackers h
    left join submissions s on h.hacker_id =s.hacker_id
     where s.score is not null and s.score <> 0
    group by h.hacker_id, s.challenge_id, h.name
    order by h.hacker_id asc
) t
group by t.hacker_id, t.name
order by total_score desc, t.hacker_id asc;

-- use subquery, need to group by for every attributes that I select

