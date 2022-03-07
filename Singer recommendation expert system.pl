go:-
    hypothesis(Choice),
    write('You may like to listen to '),
    nl,
    write(Choice),
    nl,
    undo.

hypothesis(nepathya) :- nepathya, !.
hypothesis(narayan_gopal) :- narayan_gopal, !.
hypothesis(jhalakman_gandharva) :- jhalakman_gandharva, !.
hypothesis(sushant_kc) :- sushant_kc, !.
hypothesis(pashupati_sharma) :- pashupati_sharma, !.
hypothesis(eminem) :- eminem, !.
hypothesis(ed_sheeran) :- ed_sheeran, !.
hypothesis(unknown).


nepathya:-
    verify(nepali_songs),
    verify(band_songs),
    verify(rock_songs),
    verify(drums_beats).

narayan_gopal:-
    verify(nepali_songs),
    verify(old_songs),
    verify(sad_songs),
    verify(love_songs).

jhalakman_gandharva:-
    verify(nepali_songs),
    verify(gandharva_songs),
    verify(sarangi),
    verify(old_songs),
    verify(cultural_songs).

sushant_kc:-
    verify(nepali_songs),
    verify(new_songs),
    verify(pop_songs),
    verify(modern_music),
    verify(music_videos).

pashupati_sharma:-
    verify(nepali_songs),
    verify(dohori_songs),
    verify(folk_songs).

eminem:-
    verify(english_songs),
    verify(rap_songs),
    verify(wordplays).

ed_sheeran:-
    verify(english_songs),
    verify(pop_songs),
    verify(instruments),
nl.

ask(Question) :-
    write('Do you like: '),
    write(Question),
    write('?'),
    read(Response),
    nl,
    (   (Response == yes ; Response == y)
    ->
    assert(yes(Question));
    assert(no(Question)), fail).

:- dynamic yes/1,no/1.

verify(S) :-
    (yes(S)
     ->
      true;
    (no(S)
     ->
      fail;
    ask(S))).

undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.


