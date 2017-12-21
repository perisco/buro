u n i t   u T i c k e t ; 
 
 i n t e r f a c e 
 
 u s e s 
     W i n a p i . W i n d o w s ,   W i n a p i . M e s s a g e s ,   S y s t e m . S y s U t i l s ,   S y s t e m . V a r i a n t s ,   S y s t e m . C l a s s e s ,   V c l . G r a p h i c s , 
     V c l . C o n t r o l s ,   V c l . F o r m s ,   V c l . D i a l o g s ,   V c l . S t d C t r l s ,   I d I O H a n d l e r , 
     I d I O H a n d l e r S o c k e t ,   I d I O H a n d l e r S t a c k ,   I d S S L ,   I d S S L O p e n S S L ,   I d M e s s a g e ,   I d A t t a c h m e n t ,   I d A t t a c h m e n t F i l e , 
     I d B a s e C o m p o n e n t ,   I d C o m p o n e n t ,   I d T C P C o n n e c t i o n ,   I d T C P C l i e n t , 
     I d E x p l i c i t T L S C l i e n t S e r v e r B a s e ,   I d M e s s a g e C l i e n t ,   I d S M T P B a s e ,   I d S M T P ; 
 
 t y p e 
     T T i c k e t   =   c l a s s ( T F o r m ) 
         l b l D a t e :   T L a b e l ; 
         l b l N u m b e r :   T L a b e l ; 
         l b l B a r c o d e :   T L a b e l ; 
         l b l R o o m :   T L a b e l ; 
         b t n P r i n t :   T B u t t o n ; 
         b t n S e n d :   T B u t t o n ; 
         b t n P r i n t S e n d :   T B u t t o n ; 
         m m O r g :   T M e m o ; 
         I d S M T P :   T I d S M T P ; 
         I d M e s :   T I d M e s s a g e ; 
         I d S S L :   T I d S S L I O H a n d l e r S o c k e t O p e n S S L ; 
         l b l T i m e :   T L a b e l ; 
         p r o c e d u r e   b t n P r i n t C l i c k ( S e n d e r :   T O b j e c t ) ; 
         p r o c e d u r e   b t n S e n d C l i c k ( S e n d e r :   T O b j e c t ) ; 
         p r o c e d u r e   b t n P r i n t S e n d C l i c k ( S e n d e r :   T O b j e c t ) ; 
         p r o c e d u r e   F o r m S h o w ( S e n d e r :   T O b j e c t ) ; 
     p r i v a t e 
         {   P r i v a t e   d e c l a r a t i o n s   } 
         p r o c e d u r e   s c r _ s h ; 
         p r o c e d u r e   s e n d ; 
         f u n c t i o n   S e n d M e s ( m a i l :   S t r i n g ;   v a r   E r r :   s t r i n g ) :   B o o l e a n ; 
     p u b l i c 
         {   P u b l i c   d e c l a r a t i o n s   } 
         f d i r , 
         f e m a i l :   s t r i n g ; 
     e n d ; 
 
 v a r 
     T i c k e t :   T T i c k e t ; 
 
 i m p l e m e n t a t i o n 
 
 { $ R   * . d f m } 
 
 p r o c e d u r e   T T i c k e t . b t n P r i n t C l i c k ( S e n d e r :   T O b j e c t ) ; 
 v a r   h t :   i n t e g e r ; 
 b e g i n 
     b t n P r i n t . H i d e ; 
     b t n S e n d . H i d e ; 
     b t n P r i n t S e n d . H i d e ; 
     h t : =   m m O r g . H e i g h t ; 
     t r y 
         m m O r g . H e i g h t : =   b t n P r i n t . T o p   -   m m O r g . T o p   +   b t n P r i n t . H e i g h t ; 
         A p p l i c a t i o n . P r o c e s s M e s s a g e s ; 
         p r i n t ; 
     f i n a l l y 
         m m O r g . H e i g h t : =   h t ; 
         b t n P r i n t . S h o w ; 
         b t n S e n d . S h o w ; 
         b t n P r i n t S e n d . S h o w ; 
 / /         H i d e ; 
     e n d ; 
 e n d ; 
 
 p r o c e d u r e   T T i c k e t . b t n P r i n t S e n d C l i c k ( S e n d e r :   T O b j e c t ) ; 
 v a r   h t :   i n t e g e r ; 
 b e g i n 
     b t n P r i n t . H i d e ; 
     b t n S e n d . H i d e ; 
     b t n P r i n t S e n d . H i d e ; 
     h t : =   m m O r g . H e i g h t ; 
     t r y 
         m m O r g . H e i g h t : =   b t n P r i n t . T o p   -   m m O r g . T o p   +   b t n P r i n t . H e i g h t ; 
         A p p l i c a t i o n . P r o c e s s M e s s a g e s ; 
         s e n d ; 
         p r i n t ; 
     f i n a l l y 
         m m O r g . H e i g h t : =   h t ; 
         b t n P r i n t . S h o w ; 
         b t n S e n d . S h o w ; 
         b t n P r i n t S e n d . S h o w ; 
 / /         H i d e ; 
     e n d ; 
 e n d ; 
 
 p r o c e d u r e   T T i c k e t . b t n S e n d C l i c k ( S e n d e r :   T O b j e c t ) ; 
 v a r   h t :   i n t e g e r ; 
 b e g i n 
     b t n P r i n t . H i d e ; 
     b t n S e n d . H i d e ; 
     b t n P r i n t S e n d . H i d e ; 
     h t : =   m m O r g . H e i g h t ; 
     t r y 
         m m O r g . H e i g h t : =   b t n P r i n t . T o p   -   m m O r g . T o p   +   b t n P r i n t . H e i g h t ; 
         A p p l i c a t i o n . P r o c e s s M e s s a g e s ; 
         s e n d ; 
     f i n a l l y 
         m m O r g . H e i g h t : =   h t ; 
         b t n P r i n t . S h o w ; 
         b t n S e n d . S h o w ; 
         b t n P r i n t S e n d . S h o w ; 
 / /         H i d e ; 
     e n d ; 
 e n d ; 
 
 p r o c e d u r e   T T i c k e t . F o r m S h o w ( S e n d e r :   T O b j e c t ) ; 
 v a r   m a i l :   b o o l e a n ; 
 b e g i n 
     b t n P r i n t . S h o w ; 
     b t n S e n d . S h o w ; 
     b t n P r i n t S e n d . S h o w ; 
 
     m a i l : =   n o t ( f e m a i l   =   ' ' )   a n d   ( p o s ( ' @ ' ,   f e m a i l )   >   0 ) ; 
     b t n P r i n t . E n a b l e d         : =   T r u e ; 
     b t n S e n d . E n a b l e d           : =   m a i l ; 
     b t n P r i n t S e n d . E n a b l e d : =   m a i l ; 
 e n d ; 
 
 p r o c e d u r e   T T i c k e t . s c r _ s h ; 
 v a r 
     B M P :   T B i t m a p ; 
 b e g i n 
     i f   n o t   D i r e c t o r y E x i s t s ( f d i r )   t h e n 
     b e g i n 
         A p p l i c a t i o n . M e s s a g e B o x ( ' � � �   � � � � � � � � � � �   �   � � � � � � � � �   ! ' , ' � � � � � � � � ! ' ) ; 
         A p p l i c a t i o n . P r o c e s s M e s s a g e s ; 
         e x i t ; 
     e n d ; 
 
 / /     f g : = G e t F o r e g r o u n d W i n d o w ; 
 / /     G e t W i n d o w R e c t ( f g ,   r 1 ) ;                     / /   � � � � � � � �   � � � � � �   � � � � � � � � �   � � � �   �   r 1 
     B M P : =   T B i t m a p . C r e a t e ; 
     B M P . W i d t h   : =   C l i e n t W i d t h ;                     / /   � � � � � � � � �   � � � � � � � 
     B M P . H e i g h t   : =   C l i e n t H e i g h t ; 
 
     B i t B l t ( B M P . C a n v a s . H a n d l e ,   0 ,   0 ,   B M P . W i d t h ,   B M P . H e i g h t ,   G e t D C ( H a n d l e ) ,   0 ,   0 ,   S R C C O P Y ) ; 
 
     B M P . S a v e T o F i l e ( f d i r + ' \ t i c k e t . b m p ' ) ;   / /   � � � � � � � � �   � �   � � � � 
     B M P . F r e e ; 
 e n d ; 
 
 p r o c e d u r e   T T i c k e t . s e n d ; 
 v a r   E r r :   s t r i n g ; 
 b e g i n 
     s c r _ s h ; 
     S e n d M e s ( f e m a i l ,   E r r ) ; 
     i f   E r r   < >   ' � � '   t h e n 
         A p p l i c a t i o n . M e s s a g e B o x ( P C h a r ( E r r ) , ' � � � � � � � � ! ' ) ; 
 e n d ; 
 
 f u n c t i o n   T T i c k e t . S e n d M e s ( m a i l :   S t r i n g ;   v a r   E r r :   s t r i n g ) :   B o o l e a n ; 
 
 v a r   a t t :   T i d A t t a c h m e n t ; 
 b e g i n 
     E r r : =   ' � � ' ; 
     R e s u l t : =   f a l s e ; 
     i f   ( p o s ( ' @ ' ,   m a i l )   >   0 )   t h e n 
     b e g i n 
 { 
       / /   � � �   m a i l . r u 
         I d S m t p . H o s t : =   ' s m t p . m a i l . r u ' ; 
         I d S m t p . P o r t   : =   4 6 5 ; 
         I d S m t p . U s e r n a m e   : =   ' f b m s e . e v a ' ; 
         I d S m t p . P a s s w o r d   : =   ' ; t k t p z r f ' ; 
         I d S m t p . U s e T L S   : =   u t U s e E x p l i c i t T L S ; 
         I d M e s . F r o m . A d d r e s s   : = ' f b m s e . e v a @ m a i l . r u ' ; 
       / /   - - -   � � �   m a i l . r u 
 } 
         / /   � � �   f b m s e . r u 
         I d S m t p . H o s t : =   ' 1 7 2 . 1 6 . 2 5 4 . 2 3 2 ' ; 
         I d S m t p . P o r t   : =   2 5 ; 
         I d S m t p . U s e r n a m e   : =   ' r o b o t @ f b m s e . r u ' ; 
         I d S m t p . P a s s w o r d   : =   ' ; t k t p z r f ' ; 
         I d M e s . F r o m . A d d r e s s   : = ' r o b o t @ f b m s e . r u ' ; 
         / /   - - -   � � �   f b m s e . r u 
 
         I d S m t p . H e l o N a m e   : =   ' T I C K E T ' ;   / /   � � � � � � � � � � � �   � � �   � � � � � � � � � . 
         I d S m t p . C o n n e c t T i m e o u t   : =   3 0 0 0 0 ; 
         I d S m t p . R e a d T i m e o u t   : =   3 0 0 0 0 ; 
 
         I d M e s . F r o m . N a m e   : = ' � � � � � � � � �   � � � ' ; 
         I d M e s . S u b j e c t   : =   ' � � � � �   � � �   � � � � � � � ' ; 
         I d M e s . C o n t e n t T y p e : = ' m u l t i p a r t / m i x e d ;   c h a r s e t = w i n d o w s - 1 2 5 1 ' ;   / /   � � �   � � � � � � � �   �   � � � � � � � � � 
         I d M e s . C o n t e n t T r a n s f e r E n c o d i n g : = ' 8 b i t ' ; 
         t r y 
             I d S m t p . C o n n e c t ; 
             i f   I d S m t p . C o n n e c t e d   t h e n 
             b e g i n 
                 / / A p p l i c a t i o n . M e s s a g e B o x ( P C h a r ( ' � � � � � � � � � � � � ' ) , P C h a r ( ' � � � � � � � � ' ) ) ; 
                 I d M e s . B o d y . C l e a r ; 
                 I d M e s . B o d y . A d d ( ' � � � � �   � � �   � � � � � � �   � �   � � � � � � � � ' ) ; 
                 I d M e s . B o d y . A d d ( ' ' ) ; 
                 I d M e s . B o d y . A d d ( ' - - ' ) ; 
                 I d M e s . B o d y . A d d ( ' �   � � � � � � � � � , ' ) ; 
                 I d M e s . B o d y . A d d ( ' � � � � � � � � �   � � � ' ) ; 
                 I d M e s . R e c i p i e n t s . E M a i l A d d r e s s e s   : =   m a i l ; 
                 / / I d M e s . R e c i p i e n t s . E M a i l A d d r e s s e s   : =   ' k a d r i l e e v _ r r @ f b m s e . r u , r u s l a n _ l i l i @ m a i l . r u ' ; 
                 I d M e s . D a t e : =   n o w ; 
                 a t t : = T I d A t t a c h m e n t F i l e . C r e a t e ( I d M e s . M e s s a g e P a r t s ,   f d i r + ' \ t i c k e t . b m p ' ) ; 
                 t r y 
                     I d S m t p . S e n d ( i d M e s ) ; 
                 e x c e p t 
                     I d S m t p . D i s c o n n e c t ( ) ; 
                     a t t . F r e e ; 
                     E r r : =   ' � � � � � �   � � � � � � � � ' ; 
                     R e s u l t : =   f a l s e ; 
                     e x i t ; 
                 e n d ; 
                 I d S m t p . D i s c o n n e c t ( ) ; 
                 a t t . F r e e ; 
                 R e s u l t : =   T r u e ; 
             e n d ; 
         e x c e p t 
             E r r : =   ' � � � � � �   � � � � � � � � � � � ' ; 
             R e s u l t : =   f a l s e ; 
             e x i t ; 
         e n d ; 
     e n d ; 
 e n d ; 
 
 e n d . 
 