-- MySQL dump 10.13  Distrib 8.3.0, for macos12.6 (x86_64)
--
-- Host: localhost    Database: libraryDB
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Authors`
--

DROP TABLE IF EXISTS `Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Authors` (
  `AuthorID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `Biography` text,
  PRIMARY KEY (`AuthorID`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Authors`
--

LOCK TABLES `Authors` WRITE;
/*!40000 ALTER TABLE `Authors` DISABLE KEYS */;
INSERT INTO `Authors` VALUES (1,'Erin Morgenstern','American','Erin Morgenstern is an American author best known for her debut novel, The Night Circus, which garnered widespread acclaim for its enchanting storytelling and magical realism. Born in Massachusetts, Morgenstern studied theater and studio art before transitioning to writing. Her imaginative narratives often explore themes of magic, love, and destiny, captivating readers with her lyrical prose and vivid imagery.'),(2,'Charles Dickens','British','Charles Dickens was a prolific British novelist and social critic of the Victorian era. Born in Portsmouth, England, Dickens rose to fame with iconic works such as Oliver Twist, Great Expectations, and A Tale of Two Cities. His novels vividly depict the struggles of the poor and the injustices of society, earning him widespread acclaim and cementing his legacy as one of the greatest writers in English literature.'),(3,'Albert Camus','French','Albert Camus was a French philosopher, author, and journalist known for his existentialist and absurdist themes. Born in Algeria, then a French colony, Camuss literary works, including The Stranger and The Plague, explore the human condition and the search for meaning in a seemingly indifferent universe. His philosophical insights and literary contributions continue to influence modern thought and literature.'),(4,'Daniel Kahneman','American','Daniel Kahneman is an Israeli-American psychologist and Nobel laureate known for his groundbreaking work in behavioral economics and cognitive psychology. Born in Tel Aviv, Israel, Kahnemans research on decision-making, biases, and heuristics has revolutionized our understanding of human behavior and economic theory. His book Thinking, Fast and Slow is a seminal work in the field, earning widespread acclaim for its insights into the human mind.'),(5,'Paulo Coelho','Brazilian','Paulo Coelho is a Brazilian author known for his inspirational novels, including The Alchemist and Brida. Born in Rio de Janeiro, Coelhos writing often draws upon his own spiritual journey and experiences, exploring themes of self-discovery, destiny, and personal growth. Translated into numerous languages, his works have touched the hearts of millions worldwide, making him one of the most widely read authors of contemporary literature.'),(6,'Virgil','Roman','Virgil, also known as Publius Vergilius Maro, was an ancient Roman poet of the Augustan period. Born near Mantua, Italy, Virgils epic poem The Aeneid is considered one of the greatest works of Latin literature. Commissioned by Emperor Augustus, The Aeneid traces the legendary journey of Aeneas, a Trojan hero, and serves as a national epic glorifying Romes origins and destiny. Virgils poetic mastery and profound influence on Western literature endure to this day.'),(7,'Gillian Flynn','American','Gillian Flynn is an American author known for her gripping psychological thrillers. Born in Kansas City, Missouri, Flynn gained widespread acclaim for her novel Gone Girl, which was later adapted into a successful film. Her dark and suspenseful storytelling captivates readers, exploring themes of deception, identity, and the complexities of human relationships.'),(8,'Sylvia Plath','American','Sylvia Plath was an American poet, novelist, and short story writer. Born in Boston, Massachusetts, Plaths literary works, including her semi-autobiographical novel The Bell Jar and her poetry collection Ariel, explore themes of mental illness, gender roles, and the search for identity. Despite her tragic death at a young age, Plaths profound impact on modern literature endures.'),(9,'Arthur Conan Doyle','British','Arthur Conan Doyle was a British writer best known for creating the iconic detective Sherlock Holmes. Born in Edinburgh, Scotland, Doyles Sherlock Holmes stories, featuring his brilliant deductive reasoning and loyal companion Dr. John Watson, have become classics of detective fiction. Beyond Holmes, Doyle was a prolific author, exploring a wide range of genres and subjects throughout his literary career.'),(10,'Charlotte Bront','British','Charlotte Brontë was a British novelist and poet, best known for her novel Jane Eyre. Born in Yorkshire, England, Brontës groundbreaking work challenged Victorian conventions with its portrayal of a strong, independent female protagonist. Her exploration of social class, gender inequality, and the pursuit of self-worth continues to resonate with readers worldwide.'),(11,'Heather Morris','Australian','Heather Morris is an Australian author and screenwriter best known for her novel The Tattooist of Auschwitz. Based on a true story, the book chronicles the experiences of Holocaust survivor Lale Sokolov, who worked as a tattooist at Auschwitz-Birkenau. Morriss poignant storytelling sheds light on the resilience of the human spirit in the face of unimaginable adversity.'),(12,'James Joyce','Irish','James Joyce was an Irish novelist, poet, and short story writer, regarded as one of the most influential figures in modernist literature. Born in Dublin, Ireland, Joyces experimental writing style and groundbreaking techniques, as seen in his masterpiece Ulysses, revolutionized the literary landscape. His exploration of themes such as identity, language, and consciousness continues to inspire readers and writers worldwide.'),(13,'William Golding','British','William Golding was a British novelist best known for his novel Lord of the Flies. Born in Cornwall, England, Goldings exploration of human nature and society in Lord of the Flies earned him the Nobel Prize in Literature. His works often delve into themes of civilization, morality, and the inherent darkness within humanity.'),(14,'William Faulkner','American','William Faulkner was an American novelist and short story writer known for his literary achievements in Southern Gothic literature. Born in Mississippi, Faulkners novels, including The Sound and the Fury and As I Lay Dying, explore the complexities of the American South, often depicting themes of race, class, and the decline of the Old South.'),(15,'John Steinbeck','American','John Steinbeck was an American author and Nobel laureate known for his realistic and compassionate portrayals of the American working class. Born in California, Steinbecks novels, such as The Grapes of Wrath and Of Mice and Men, capture the struggles and dreams of ordinary people during the Great Depression. His literary contributions earned him widespread acclaim and recognition.'),(16,'Ernest Hemingway','American','Ernest Hemingway was an American novelist, short story writer, and journalist, known for his concise and powerful prose style. Born in Illinois, Hemingways novels, including The Old Man and the Sea and A Farewell to Arms, often depict themes of war, masculinity, and the human condition. His adventurous life and literary achievements have made him a cultural icon of the 20th century.'),(17,'John Green','American','John Green is an American author and YouTube personality known for his young adult novels. Born in Indiana, Greens novels, such as The Fault in Our Stars and Looking for Alaska, tackle themes of love, loss, and adolescence with sensitivity and wit. His works have garnered widespread popularity and critical acclaim, earning him a dedicated fanbase worldwide.'),(18,'Kathryn Stockett','American','Kathryn Stockett is an American author best known for her novel The Help. Born and raised in Mississippi, Stocketts poignant exploration of race, class, and female empowerment in The Help struck a chord with readers worldwide. Her compelling storytelling and memorable characters have made The Help a beloved modern classic.'),(19,'Jane Austen','British','Jane Austen was a British novelist known for her keen observations of society and insightful character studies. Born in Hampshire, England, Austens novels, including Pride and Prejudice and Sense and Sensibility, are celebrated for their wit, irony, and social commentary. Her works remain enduring classics of English literature, admired for their timeless portrayal of human nature and romance.'),(20,'Joseph Heller','American','Joseph Heller was an American author best known for his satirical novel Catch-22. Born in New York City, Hellers dark humor and biting critique of bureaucracy and war in Catch-22 earned him widespread acclaim. His innovative narrative style and thought-provoking themes have cemented his reputation as one of the most influential writers of the 20th century.'),(21,'Toni Morrison','American','Toni Morrison was an American novelist, essayist, and Nobel laureate known for her powerful exploration of African American experiences. Born in Ohio, Morrisons novels, including Beloved and Song of Solomon, confront themes of race, identity, and trauma with lyrical prose and profound insight. Her literary achievements have earned her numerous awards and accolades, solidifying her legacy as a literary giant.'),(22,'Nathaniel Hawthorne','American','Nathaniel Hawthorne was an American novelist and short story writer known for his dark romanticism and exploration of Puritanism. Born in Massachusetts, Hawthornes novel The Scarlet Letter is a seminal work of American literature, examining themes of sin, guilt, and redemption in colonial New England. His introspective and allegorical writing style has left an indelible mark on American literature.'),(23,'Audrey Niffenegger','American','Audrey Niffenegger is an American author and visual artist best known for her novel The Time Travelers Wife. Born in South Haven, Michigan, Niffeneggers imaginative storytelling blurs the lines between fantasy and reality, exploring themes of love, fate, and the passage of time. Her unique blend of romance and science fiction has captivated readers around the world.'),(24,'M. Scott Peck','American','M. Scott Peck was an American psychiatrist and author best known for his self-help book The Road Less Traveled. Born in New York City, Pecks work explores topics such as personal growth, spirituality, and mental health. His compassionate approach to psychology and philosophy has inspired readers to embrace lifes challenges and pursue a path of self-discovery and fulfillment.'),(25,'Alex Michaelides','British','Alex Michaelides is a British-Cypriot author known for his psychological thriller novel The Silent Patient. Born in Cyprus and raised in England, Michaelidess gripping debut novel captivated readers with its twisty plot and suspenseful storytelling. His exploration of the human psyche and the mysteries of the mind has earned him widespread acclaim in the literary world.'),(26,'Stephen Hawking','British','Stephen Hawking was a British theoretical physicist, cosmologist, and author, renowned for his contributions to the fields of cosmology and quantum gravity. Born in Oxford, England, Hawkings groundbreaking work on black holes and the nature of the universe, as outlined in his book A Brief History of Time, has inspired scientists and readers alike, making complex scientific concepts accessible to the general public.'),(27,'Markus Zusak','Australian','Markus Zusak is an Australian author known for his novel The Book Thief. Born in Sydney, Australia, Zusaks powerful storytelling and unique narrative voice have resonated with readers worldwide. The Book Thief, set during World War II, explores themes of courage, love, and the power of words, earning critical acclaim and numerous literary awards.'),(28,'Haruki Murakami','Japanese','Haruki Murakami is a Japanese author known for his surreal and philosophical novels. Born in Kyoto, Japan, Murakamis works, including Norwegian Wood and Kafka on the Shore, blend elements of magical realism, existentialism, and pop culture. His exploration of loneliness, alienation, and the human condition has made him one of the most celebrated and influential authors of contemporary literature.'),(29,'Rudyard Kipling','British','Rudyard Kipling was a British author and poet best known for his stories and poems set in British India. Born in Bombay, India (now Mumbai), Kiplings works, including The Jungle Book and Kim, capture the spirit of adventure and the complexities of colonial life. His vivid storytelling and evocative prose have left an indelible mark on childrens literature and English literature as a whole.'),(30,'Gabriel Garcia Marquez','Colombian','Gabriel García Márquez was a Colombian novelist, short story writer, and Nobel laureate known for his magical realism and literary masterpieces. Born in Aracataca, Colombia, García Márquezs novels, including One Hundred Years of Solitude and Love in the Time of Cholera, are celebrated for their lush imagery, intricate storytelling, and exploration of Latin American culture and history.'),(31,'Kurt Vonnegut','American','Kurt Vonnegut was an American author known for his satirical and science fiction novels. Born in Indianapolis, Indiana, Vonneguts works, including Slaughterhouse-Five and Cats Cradle, tackle themes of war, technology, and the human condition with wit and insight. His irreverent storytelling and biting social commentary have made him a countercultural icon and literary figure.'),(32,'Patrick Rothfuss','American','Patrick Rothfuss is an American author known for his fantasy series The Kingkiller Chronicle. Born in Madison, Wisconsin, Rothfusss epic fantasy novels, including The Name of the Wind and The Wise Mans Fear, transport readers to the magical world of Temerant, filled with compelling characters and intricate world-building. His lyrical prose and masterful storytelling have earned him a devoted fanbase and critical acclaim.'),(33,'Mark Twain','American','Mark Twain, born Samuel Langhorne Clemens, was an American author and humorist best known for his novels The Adventures of Tom Sawyer and Adventures of Huckleberry Finn. Born in Florida, Missouri, Twains witty observations of American society and his mastery of vernacular storytelling have made him one of the most beloved and influential writers in American literature.'),(34,'Dante Alighieri','Italian','Dante Alighieri was an Italian poet, writer, and philosopher best known for his epic poem Divine Comedy. Born in Florence, Italy, Dantes Divine Comedy, consisting of three parts—Inferno, Purgatorio, and Paradiso—is considered one of the greatest works of world literature. His exploration of the afterlife, moral theology, and political allegory continues to resonate with readers and scholars.'),(35,'Miguel de Cervantes','Spanish','Miguel de Cervantes was a Spanish novelist, poet, and playwright best known for his novel Don Quixote. Born in Alcalá de Henares, Spain, Cervantess masterpiece Don Quixote, often regarded as the first modern novel, follows the adventures of the eccentric knight-errant Don Quixote and his loyal squire Sancho Panza. Cervantess innovative narrative techniques and timeless themes of idealism and reality have secured his place as a literary giant.'),(36,'Charles Duhigg','American','Charles Duhigg is an American author and journalist known for his explorations of the science of habit formation and productivity. Born in New Mexico, Duhiggs book The Power of Habit delves into the psychology behind habits and how they shape our lives and businesses. His insightful research and engaging storytelling have made him a sought-after speaker and thought leader in the field of behavioral psychology.'),(37,'Joseph Conrad','British','Joseph Conrad was a British novelist considered one of the greatest English-language writers of the 20th century. Born in what is now Ukraine, Conrads works, including Heart of Darkness and Lord Jim, explore themes of human nature, colonialism, and the moral dilemmas of existence. His profound insight into the human psyche and mastery of narrative technique have earned him a lasting place in literary history.'),(38,'George Eliot','British','George Eliot, born Mary Ann Evans, was a British novelist and one of the leading writers of the Victorian era. Born in Warwickshire, England, Eliots novels, including Middlemarch and The Mill on the Floss, are celebrated for their psychological depth, realism, and social commentary. Her insightful portrayals of complex characters and exploration of moral and social issues have earned her a prominent place in English literature.'),(39,'Geoffrey Chaucer','English','Geoffrey Chaucer was an English poet and author known as the Father of English literature. Born in London, Chaucers masterpiece, The Canterbury Tales, is a seminal work of Middle English literature, showcasing his wit, satire, and keen observation of medieval society. His contributions to English poetry and language have had a profound and enduring impact on literature and culture.'),(40,'Kristin Hannah','American','Kristin Hannah is an American author known for her emotionally rich and compelling novels. Born in California, Hannahs best-selling books, such as The Nightingale and Firefly Lane, explore themes of love, friendship, and resilience in the face of adversity. Her poignant storytelling and vivid characters have resonated with readers worldwide, making her one of the most beloved authors of contemporary fiction.'),(41,'Frank Herbert','American','Frank Herbert was an American author best known for his science fiction epic Dune and its sequels. Born in Washington, Herberts sprawling and intricate universe, set in a distant future where politics, religion, and ecology collide, has captivated readers for generations. His imaginative world-building and philosophical themes have earned him a place among the greatest science fiction writers of all time.'),(42,'Stieg Larsson','Swedish','Stieg Larsson was a Swedish journalist and author known for his Millennium series, beginning with The Girl with the Dragon Tattoo. Born in Skelleftehamn, Sweden, Larssons gripping crime novels, featuring investigative journalist Mikael Blomkvist and hacker Lisbeth Salander, tackle themes of corruption, violence, and societal injustice. His posthumously published works have become international bestsellers, cementing his legacy as a master of Nordic noir.'),(43,'Tara Westover','American','Tara Westover is an American author known for her memoir Educated. Born in Idaho, Westovers memoir recounts her journey from growing up in a strict and isolated household to earning a PhD from Cambridge University. Educated explores themes of family, education, and the power of self-discovery, earning widespread acclaim for its honesty, resilience, and triumph over adversity.'),(44,'Mary Shelley','British','Mary Shelley was a British novelist and writer best known for her Gothic novel Frankenstein. Born in London, England, Shelleys groundbreaking work, written when she was just eighteen years old, explores themes of creation, ambition, and the consequences of scientific discovery. Her imaginative storytelling and exploration of ethical dilemmas continue to resonate with readers and inspire adaptations across various media.'),(45,'Andy Weir','American','Andy Weir is an American author known for his science fiction novel The Martian. Born in California, Weirs self-published novel, originally serialized online, became a literary sensation and was later adapted into a successful film. His meticulous research, technical accuracy, and humor have endeared him to fans of hard science fiction around the world.'),(46,'Thomas Hardy','British','Thomas Hardy was an English novelist and poet known for his depictions of rural life in Wessex, England. Born in Dorset, England, Hardys novels, including Tess of the dUrbervilles and Far from the Madding Crowd, explore themes of fate, class, and the conflict between individual desires and societal expectations. His poetic prose and tragic narratives have earned him a lasting place in English literature.'),(47,'Zadie Smith','British','Zadie Smith is a British author known for her critically acclaimed novels exploring themes of race, identity, and multiculturalism. Born in London, England, Smiths debut novel White Teeth garnered widespread acclaim, heralding the arrival of a bold new voice in contemporary literature. Her insightful observations of modern society and richly drawn characters have established her as one of the most influential writers of her generation.'),(48,'Mark Haddon','British','Mark Haddon is a British author and illustrator best known for his novel The Curious Incident of the Dog in the Night-Time. Born in Northampton, England, Haddons novel, narrated by a teenage boy with autism, offers a unique perspective on the human mind and the mysteries of life. His empathetic portrayal of neurodiversity and poignant storytelling have earned him widespread acclaim and literary awards.'),(49,'George Orwell','British','George Orwell, born Eric Arthur Blair, was a British novelist, essayist, and critic best known for his dystopian novel Nineteen Eighty-Four and allegorical novella Animal Farm. Born in British India, Orwells works explore themes of totalitarianism, surveillance, and political oppression, reflecting his own experiences and observations of the 20th century. His keen insight into social and political issues continues to resonate with readers around the world.'),(50,'Alexandre Dumas','French','Alexandre Dumas was a French writer known for his adventure novels, including The Three Musketeers and The Count of Monte Cristo. Born in Villers-Cotterêts, France, Dumass swashbuckling tales of heroism, romance, and revenge have captivated readers for generations. His prolific output and timeless stories have made him one of the most widely read authors in literary history.'),(51,'George R.R. Martin','American','George R.R. Martin is an American author and screenwriter best known for his epic fantasy series A Song of Ice and Fire, which was adapted into the acclaimed television series Game of Thrones. Born in New Jersey, Martins richly detailed world-building, complex characters, and political intrigue have captivated readers and viewers worldwide. His work has earned numerous awards and accolades, establishing him as one of the most influential figures in contemporary fantasy literature.'),(52,'Douglas Adams','British','Douglas Adams was a British author and humorist best known for his science fiction series The Hitchhikers Guide to the Galaxy. Born in Cambridge, England, Adamss witty and irreverent take on space exploration, philosophy, and bureaucracy has earned him a cult following. His unique blend of satire and absurdity continues to entertain and inspire readers around the world.'),(53,'Margaret Mitchell','American','Margaret Mitchell was an American author best known for her novel Gone with the Wind. Born in Atlanta, Georgia, Mitchells sweeping saga of the American South during the Civil War and Reconstruction era has become a literary classic. Her vivid characters, epic romance, and exploration of race and class have made Gone with the Wind one of the best-selling novels of all time and earned Mitchell the Pulitzer Prize for Fiction.'),(54,'Delia Owens','American','Delia Owens is an American author and zoologist known for her debut novel Where the Crawdads Sing. Born in Georgia, Owenss atmospheric mystery novel, set in the marshes of North Carolina, has captivated readers with its lyrical prose and evocative storytelling. Her background in wildlife science and her love for nature shine through in her writing, creating a compelling and immersive reading experience.'),(55,'Leo Tolstoy','Russian','Leo Tolstoy was a Russian novelist and philosopher considered one of the greatest authors of all time. Born in Yasnaya Polyana, Russia, Tolstoys masterpieces, including War and Peace and Anna Karenina, are celebrated for their exploration of the human condition, morality, and the Russian society of the 19th century. His profound insights into love, faith, and the meaning of life continue to resonate with readers around the world.'),(56,'Khaled Hosseini','Afghan','Khaled Hosseini is an Afghan-American author and physician known for his novels The Kite Runner, A Thousand Splendid Suns, and And the Mountains Echoed. Born in Kabul, Afghanistan, Hosseinis deeply moving stories, set against the backdrop of Afghanistans tumultuous history, have touched readers with their themes of friendship, family, and redemption. His work has earned him international acclaim and a dedicated global following.'),(57,'Dan Brown','American','Dan Brown is an American author known for his bestselling thriller novels, including The Da Vinci Code and Angels & Demons. Born in New Hampshire, Browns meticulously researched and fast-paced narratives, often centered around religious and historical mysteries, have captivated readers around the world. His books have been translated into numerous languages and adapted into blockbuster films.'),(58,'Yann Martel','Canadian','Yann Martel is a Canadian author known for his novel Life of Pi, which won the Man Booker Prize for Fiction in 2002. Born in Spain and raised in Canada, Martels imaginative tale of a young boy adrift at sea with a Bengal tiger has enchanted readers with its allegorical richness and philosophical depth. His exploration of faith, survival, and the power of storytelling has earned him critical acclaim and international recognition.'),(59,'Fyodor Dostoevsky','Russian','Fyodor Dostoevsky was a Russian novelist, philosopher, and journalist considered one of the greatest psychological novelists in world literature. Born in Moscow, Russia, Dostoevskys works, including Crime and Punishment and The Brothers Karamazov, explore themes of morality, existentialism, and the human psyche. His profound insights into the depths of the human soul and the complexities of human nature have left an indelible mark on literature.'),(60,'Herman Melville','American','Herman Melville was an American author best known for his novel Moby-Dick and his seafaring tales. Born in New York City, Melvilles works explore themes of obsession, fate, and the struggle between man and nature. Though largely overlooked during his lifetime, Melvilles literary legacy has grown over the years, and Moby-Dick is now regarded as one of the greatest American novels ever written.'),(61,'Cormac McCarthy','American','Cormac McCarthy is an American author known for his spare and powerful prose and his exploration of themes such as violence, morality, and the American landscape. Born in Rhode Island, McCarthys novels, including Blood Meridian and The Road, are celebrated for their lyrical language and bleak yet profound insights into the human condition. His work has earned him numerous awards, including the Pulitzer Prize for Fiction.'),(62,'Bret Easton Ellis','American','Bret Easton Ellis is an American author known for his controversial and provocative novels depicting the excesses of contemporary American society. Born in Los Angeles, California, Elliss works, including Less Than Zero and American Psycho, have sparked debate and controversy with their graphic depictions of violence, materialism, and nihilism. His uncompromising exploration of the darker aspects of human nature has made him a polarizing figure in literature.'),(63,'Antoine de Saint-Exupry','French','Antoine de Saint-Exupéry was a French writer, poet, and aviator best known for his novella The Little Prince. Born in Lyon, France, Saint-Exupérys lyrical and philosophical tale, beloved by readers of all ages, explores themes of friendship, love, and the search for meaning in life. His poignant reflections on the human condition and the importance of imagination continue to resonate with readers around the world.'),(64,'J.D. Salinger','American','J.D. Salinger was an American author known for his novel The Catcher in the Rye, one of the most widely read and influential works of 20th-century literature. Born in New York City, Salingers iconic protagonist, Holden Caulfield, captured the imagination of readers with his alienation, rebellion, and search for authenticity. Despite his reclusive nature, Salingers literary legacy endures as a touchstone of adolescent angst and existential disillusionment.'),(65,'Donna Tartt','American','Donna Tartt is an American author known for her novels The Secret History, The Little Friend, and The Goldfinch, which won the Pulitzer Prize for Fiction in 2014. Born in Mississippi, Tartts meticulously crafted narratives and richly drawn characters have earned her critical acclaim and a devoted following. Her immersive storytelling and exploration of themes such as art, friendship, and loss have solidified her reputation as one of the preeminent voices in contemporary literature.'),(66,'Oscar Wilde','Irish','Oscar Wilde was an Irish playwright, poet, and author known for his wit, flamboyance, and contributions to literature and aesthetics. Born in Dublin, Ireland, Wildes plays, including The Importance of Being Earnest and The Picture of Dorian Gray, are celebrated for their sharp satire and social commentary. Despite his tragic downfall and imprisonment, Wildes enduring legacy continues to inspire artists, writers, and thinkers worldwide.'),(67,'Colson Whitehead','American','Colson Whitehead is an American author known for his novels exploring African-American history and culture. Born in New York City, Whiteheads works, including The Underground Railroad and The Nickel Boys, have earned him critical acclaim and numerous awards, including the Pulitzer Prize for Fiction. His powerful storytelling and unflinching examination of race and identity have cemented his place as one of the most important voices in contemporary literature.'),(68,'Emily Brontë','British','Emily Brontë was a British novelist and poet best known for her only novel, Wuthering Heights. Born in Yorkshire, England, Brontës haunting tale of passion, revenge, and the Yorkshire moors has become a classic of English literature. Despite her relatively short life, Brontës enigmatic personality and evocative writing style continue to fascinate readers and scholars alike.'),(69,'Stephen King','American','Stephen King is an American author of horror, supernatural fiction, suspense, and fantasy novels. Born in Maine, Kings prolific output and uncanny ability to tap into primal fears have made him one of the most popular and influential writers of his generation. His works, such as The Shining, It, and The Stand, have sold millions of copies worldwide and been adapted into numerous films, television series, and other media.'),(70,'Trevor Noah','South African','Trevor Noah is a South African comedian, television host, and author best known for hosting The Daily Show on Comedy Central. Born in Johannesburg, South Africa, Noahs memoir, Born a Crime, explores his childhood growing up during the apartheid era and his rise to prominence in the entertainment industry. His incisive wit, sharp social commentary, and personal anecdotes have earned him widespread acclaim and a global audience.'),(71,'C.S. Lewis','British','C.S. Lewis was a British writer and scholar best known for his fantasy series The Chronicles of Narnia. Born in Belfast, Ireland, Lewiss imaginative tales of adventure, magic, and Christian allegory have captivated readers of all ages. His works, including The Lion, the Witch and the Wardrobe, continue to inspire and enchant readers around the world.'),(72,'Virginia Woolf','British','Virginia Woolf was a British writer and modernist literary figure known for her novels, essays, and pioneering works of feminist literature. Born in London, England, Woolfs experimental narratives, stream-of-consciousness writing style, and exploration of the inner lives of her characters have left an indelible mark on 20th-century literature. Her most famous works include Mrs. Dalloway and To the Lighthouse.'),(73,'Aldous Huxley','British','Aldous Huxley was a British writer and philosopher known for his dystopian novel Brave New World. Born into a prominent intellectual family, Huxleys exploration of technology, society, and individual freedom has made him one of the most influential figures in 20th-century literature. His works continue to provoke thought and discussion on the ethical implications of scientific advancement.'),(74,'Lisa Wingate','American','Lisa Wingate is an American author known for her bestselling novels, including Before We Were Yours and The Book of Lost Friends. Born in Texas, Wingates compelling storytelling and heartfelt narratives often draw inspiration from historical events and personal experiences. Her works explore themes of family, resilience, and the enduring power of hope.'),(75,'Victor Hugo','French','Victor Hugo was a French poet, novelist, and playwright known for his epic historical novels, including Les Misérables and The Hunchback of Notre-Dame. Born in Besançon, France, Hugos literary masterpieces have had a profound impact on French literature and culture. His impassioned advocacy for social justice and human rights continues to resonate with readers worldwide.'),(76,'Homer','Greek','Homer is an ancient Greek poet traditionally credited with composing the epic poems The Iliad and The Odyssey. Little is known about Homers life, but his works, which explore themes of heroism, fate, and the human condition, have had a lasting influence on Western literature and culture. His epic narratives have been studied, adapted, and celebrated for centuries.'),(77,'Margaret Atwood','Canadian','Margaret Atwood is a Canadian author known for her dystopian fiction and feminist themes. Born in Ottawa, Canada, Atwoods novels, including The Handmaids Tale and Oryx and Crake, explore issues of power, gender, and environmental degradation. Her visionary storytelling and incisive social commentary have earned her numerous awards and international acclaim.'),(78,'F. Scott Fitzgerald','American','F. Scott Fitzgerald was an American novelist and short story writer known for his portrayal of the Jazz Age in America. Born in St. Paul, Minnesota, Fitzgeralds novels, including The Great Gatsby and Tender Is the Night, capture the glamour, excess, and disillusionment of the Roaring Twenties. His elegant prose and exploration of the American Dream have secured his place as one of the greatest American writers of the 20th century.'),(79,'Henry David Thoreau','American','Henry David Thoreau was an American essayist, poet, and philosopher known for his transcendentalist writings and his book Walden. Born in Concord, Massachusetts, Thoreaus celebration of nature, simplicity, and self-reliance has inspired generations of readers to seek a deeper connection with the natural world and live deliberately. His influence on environmentalism and social activism remains profound.'),(80,'Suzanne Collins','American','Suzanne Collins is an American author known for her bestselling The Hunger Games trilogy. Born in Hartford, Connecticut, Collinss dystopian novels, set in a post-apocalyptic future, have captured the imaginations of readers of all ages with their themes of survival, sacrifice, and rebellion. Her powerful storytelling and complex characters have made her one of the most successful authors of young adult literature.'),(81,'H.G. Wells','British','H.G. Wells was a British writer and visionary known for his science fiction novels, including The War of the Worlds and The Time Machine. Born in Bromley, England, Wellss imaginative tales of alien invasions, time travel, and futuristic societies have left an indelible mark on the genre of science fiction. His works continue to inspire writers, filmmakers, and scientists to explore the possibilities of the future.'),(82,'J.R.R. Tolkien','British','J.R.R. Tolkien was a British writer, philologist, and academic known for his fantasy novels The Hobbit and The Lord of the Rings. Born in Bloemfontein, South Africa, Tolkiens richly imagined world of Middle-earth, populated by hobbits, elves, and wizards, has captured the hearts and imaginations of readers worldwide. His works, celebrated for their depth of mythology and linguistic invention, have become timeless classics of fantasy literature.'),(83,'Harper Lee','American','Harper Lee was an American author best known for her novel To Kill a Mockingbird. Born in Monroeville, Alabama, Lees exploration of racial injustice and moral growth in the American South has earned her widespread acclaim and a Pulitzer Prize. Despite publishing only one novel, Lees impact on literature and social consciousness remains profound, cementing her status as one of the most important American writers of the 20th century.');
/*!40000 ALTER TABLE `Authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book_Copies`
--

DROP TABLE IF EXISTS `Book_Copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book_Copies` (
  `CopyID` int NOT NULL AUTO_INCREMENT,
  `BookISBN` int DEFAULT NULL,
  `ShelfID` int DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `NoOfCopies` int DEFAULT NULL,
  PRIMARY KEY (`CopyID`),
  KEY `BookISBN` (`BookISBN`),
  KEY `ShelfID` (`ShelfID`),
  CONSTRAINT `book_copies_ibfk_1` FOREIGN KEY (`BookISBN`) REFERENCES `Books` (`ISBN`),
  CONSTRAINT `book_copies_ibfk_2` FOREIGN KEY (`ShelfID`) REFERENCES `Shelves` (`ShelfID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book_Copies`
--

LOCK TABLES `Book_Copies` WRITE;
/*!40000 ALTER TABLE `Book_Copies` DISABLE KEYS */;
INSERT INTO `Book_Copies` VALUES (1,97801412,1,'Available',3),(2,97807412,7,'Available',3),(3,86582836,3,'Available',3),(4,62663041,2,'Available',3),(5,97803112,3,'Available',3),(6,37400612,7,'Available',3),(7,97806112,4,'Available',3),(8,97805712,8,'Available',3),(9,17504512,9,'Available',3),(10,77869313,9,'Available',3),(11,66899063,10,'Available',3),(12,27080734,2,'Available',3),(13,97804412,8,'Available',3),(14,28220192,5,'Available',3),(15,38264743,10,'Available',3),(16,53353280,4,'Available',3),(17,30657505,8,'Available',3),(18,85639101,8,'Available',3),(19,97801512,6,'Available',3),(20,84038207,7,'Available',3),(21,40619118,4,'Available',3),(22,55293845,9,'Available',3),(23,24343983,4,'Available',3),(24,35435884,1,'Available',3),(25,50963856,4,'Available',3),(26,66135428,7,'Available',3),(27,97806712,3,'Available',3),(28,83768946,2,'Available',3),(29,43818341,2,'Available',3),(30,68791964,4,'Available',3),(31,80567176,1,'Available',3),(32,97800912,5,'Available',3),(33,97804812,1,'Available',3),(34,87753333,8,'Available',3),(35,79552931,9,'Available',3),(36,10837102,7,'Available',3),(37,28132263,1,'Available',3),(38,76564467,1,'Available',5),(39,97803912,1,'Available',5),(40,47393709,3,'Available',5),(41,40957888,10,'Available',5),(42,26803132,10,'Available',5),(43,55998263,2,'Available',5),(44,63020480,7,'Available',5),(45,34374892,9,'Available',5),(46,86590945,5,'Available',5),(47,32951684,5,'Available',5),(48,88262617,1,'Available',5),(49,97806812,8,'Available',5),(50,77279487,7,'Available',3),(51,97803012,9,'Available',3),(52,97814012,6,'Available',3),(53,40382087,3,'Available',3),(54,55376848,7,'Available',3),(55,29166144,7,'Available',3),(56,77442289,10,'Available',3),(57,97803812,8,'Available',3),(58,18320974,1,'Available',3),(59,97803712,1,'Available',3),(60,66485129,10,'Available',3),(61,97805512,7,'Available',3),(62,11076460,4,'Available',3),(63,73355063,8,'Available',3),(64,55471743,7,'Available',3),(65,97815912,2,'Available',3),(66,97805212,8,'Available',3),(67,62190549,5,'Available',3),(68,49909809,2,'Available',3),(69,67246828,1,'Available',3),(70,56016976,9,'Available',3),(71,76018675,3,'Available',3),(72,29313892,5,'Available',3),(73,47282821,9,'Available',3),(74,66956374,7,'Available',3),(75,97819812,10,'Available',3),(76,46730136,6,'Available',3),(77,68039162,1,'Available',3),(78,89468184,7,'Available',3),(79,97805912,10,'Available',3),(80,97804312,10,'Available',3),(81,71940131,7,'Available',3),(82,97807512,7,'Available',3),(83,71557620,1,'Available',3),(84,97803412,6,'Available',3),(85,46935248,4,'Available',3),(86,60882535,3,'Available',3),(87,85435996,4,'Available',3),(88,44497847,9,'Available',3),(89,80723000,1,'Available',3),(90,25255432,10,'Available',3),(91,49982206,7,'Available',3),(92,41587113,2,'Available',3),(93,97812512,9,'Available',3),(94,89234240,8,'Available',3),(95,97807312,5,'Available',3),(96,97804212,10,'Available',3),(97,72426505,5,'Available',3),(98,76491127,5,'Available',3);
/*!40000 ALTER TABLE `Book_Copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book_Issuer_Receiver`
--

DROP TABLE IF EXISTS `Book_Issuer_Receiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book_Issuer_Receiver` (
  `IssuerReceiverID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Designation` varchar(100) DEFAULT NULL,
  `Qualification` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IssuerReceiverID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book_Issuer_Receiver`
--

LOCK TABLES `Book_Issuer_Receiver` WRITE;
/*!40000 ALTER TABLE `Book_Issuer_Receiver` DISABLE KEYS */;
INSERT INTO `Book_Issuer_Receiver` VALUES (1,'John wick','Librarian','Master of Library Science'),(2,'Harry Potter','Assistant Librarian','Bachelor of Arts in English Literature');
/*!40000 ALTER TABLE `Book_Issuer_Receiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book_Reviews`
--

DROP TABLE IF EXISTS `Book_Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book_Reviews` (
  `ReviewID` int NOT NULL AUTO_INCREMENT,
  `BookISBN` int DEFAULT NULL,
  `MemberID` int DEFAULT NULL,
  `ReviewText` text,
  `Rating` int DEFAULT NULL,
  PRIMARY KEY (`ReviewID`),
  KEY `BookISBN` (`BookISBN`),
  KEY `MemberID` (`MemberID`),
  CONSTRAINT `book_reviews_ibfk_1` FOREIGN KEY (`BookISBN`) REFERENCES `Books` (`ISBN`),
  CONSTRAINT `book_reviews_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `Member_Profile` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book_Reviews`
--

LOCK TABLES `Book_Reviews` WRITE;
/*!40000 ALTER TABLE `Book_Reviews` DISABLE KEYS */;
INSERT INTO `Book_Reviews` VALUES (1,97801412,1,'Great book, couldnt put it down!',5),(2,97807412,2,'Absolutely loved it, a must-read!',4),(3,86582836,3,'Captivating storyline, highly recommend!',5),(4,62663041,4,'A bit confusing, but worth the read.',3),(5,97803112,5,'Incredible characters, couldnt stop reading!',5),(6,37400612,6,'Disappointing, didnt live up to the hype.',2),(7,97806112,7,'Well-written and engaging.',4),(8,97805712,8,'Couldnt get into it, not my cup of tea.',2),(9,17504512,9,'Fascinating plot twists, kept me guessing.',4),(10,77869313,10,'A masterpiece, beautifully written.',5),(11,66899063,11,'Didnt enjoy it, couldnt connect with the characters.',2),(12,27080734,1,'Thrilling from start to finish!',5),(13,97804412,2,'Enjoyable read, would recommend to others.',4),(14,28220192,3,'Thought-provoking and emotionally resonant.',5),(15,38264743,4,'Couldnt finish it, too slow-paced for me.',2),(16,53353280,5,'Captivating plot, kept me hooked until the end.',4),(17,30657505,6,'A classic that everyone should read!',5),(18,85639101,7,'Interesting concept, but execution fell short.',3),(19,97801512,8,'Couldnt put it down, eagerly awaiting the sequel.',5),(20,84038207,9,'Disappointing ending, otherwise a decent read.',3),(21,40619118,10,'Unique and original, thoroughly enjoyed it.',5),(22,55293845,11,'Not my genre, couldnt get into it.',2),(23,24343983,1,'Heartwarming story, highly recommend!',4),(24,35435884,2,'A bit overrated, didnt live up to my expectations.',3),(25,50963856,3,'Couldnt connect with the characters, felt flat.',2),(26,66135428,4,'Engaging and suspenseful, couldnt put it down.',4),(27,97806712,5,'Absolutely brilliant, a must-read for all.',5),(28,83768946,6,'Interesting premise, but execution was lacking.',3),(29,43818341,7,'Couldnt get into it, too slow-paced.',2),(30,68791964,8,'Riveting plot, kept me guessing until the end.',4),(31,80567176,9,'Couldnt finish it, lost interest halfway through.',2),(32,97800912,10,'A modern classic, beautifully written.',5),(33,97804812,11,'Enjoyable read, but forgettable.',3),(34,87753333,1,'A rollercoaster of emotions, highly recommend!',5),(35,79552931,2,'Engrossing storyline, couldnt predict the twists.',4),(36,10837102,3,'Couldnt get into it, too complex for me.',2),(37,28132263,4,'Masterfully crafted, couldnt put it down.',5),(38,76564467,5,'Disappointing, expected more from this author.',3),(39,97803912,6,'Intriguing plot, kept me guessing until the end.',4),(40,47393709,7,'Couldnt finish it, lost interest.',2),(41,40957888,8,'Thought-provoking and beautifully written.',5),(42,26803132,9,'Enjoyable read, but lacked depth.',3),(43,55998263,10,'Couldnt connect with the characters, felt flat.',2),(44,63020480,11,'Absolutely loved it, couldnt put it down!',5),(45,34374892,1,'A gripping page-turner, highly recommend!',5),(46,86590945,2,'Couldnt get into it, too slow-paced for me.',2),(47,32951684,3,'Brilliantly written, kept me hooked until the end.',5),(48,88262617,4,'Disappointing ending, otherwise a decent read.',3),(49,97806812,5,'Captivating storyline, highly recommend!',4),(50,77279487,6,'Couldnt put it down, eagerly awaiting the sequel.',5),(51,97803012,7,'A modern classic, beautifully written.',5),(52,97814012,8,'Interesting premise, but execution was lacking.',3),(53,40382087,9,'Couldnt finish it, lost interest halfway through.',2),(54,55376848,10,'Riveting plot, kept me guessing until the end.',4),(55,29166144,11,'Couldnt get into it, too slow-paced.',2),(56,77442289,1,'Engaging and suspenseful, couldnt put it down.',4),(57,97803812,2,'Absolutely brilliant, a must-read for all.',5),(58,18320974,3,'Interesting concept, but execution fell short.',3),(59,97803712,4,'A bit overrated, didnt live up to my expectations.',3),(60,66485129,5,'Heartwarming story, highly recommend!',4),(61,97805512,6,'A bit confusing, but worth the read.',3),(62,11076460,7,'Masterfully crafted, couldnt put it down.',5),(63,73355063,8,'Engrossing storyline, couldnt predict the twists.',4),(64,55471743,9,'Disappointing, expected more from this author.',2),(65,97815912,10,'Intriguing plot, kept me guessing until the end.',4),(66,97805212,11,'Couldnt finish it, lost interest.',2),(67,62190549,1,'Thought-provoking and beautifully written.',5),(68,49909809,2,'Enjoyable read, but lacked depth.',3),(69,67246828,3,'Couldnt connect with the characters, felt flat.',2),(70,56016976,4,'Absolutely loved it, couldnt put it down!',5),(71,76018675,5,'A gripping page-turner, highly recommend!',5),(72,29313892,6,'Couldnt get into it, too slow-paced for me.',2),(73,47282821,7,'Brilliantly written, kept me hooked until the end.',5),(74,66956374,8,'Disappointing ending, otherwise a decent read.',3),(75,97819812,9,'Captivating storyline, highly recommend!',4),(76,46730136,10,'Couldnt put it down, eagerly awaiting the sequel.',5),(77,68039162,11,'A modern classic, beautifully written.',5),(78,89468184,1,'Interesting premise, but execution was lacking.',3),(79,97805912,2,'Couldnt finish it, lost interest halfway through.',2),(80,97804312,3,'Riveting plot, kept me guessing until the end.',4),(81,71940131,4,'Couldnt get into it, too slow-paced.',2),(82,97807512,5,'Engaging and suspenseful, couldnt put it down.',4),(83,71557620,6,'Absolutely brilliant, a must-read for all.',5),(84,97803412,7,'A bit overrated, didnt live up to my expectations.',3),(85,46935248,8,'Heartwarming story, highly recommend!',4),(86,60882535,9,'A bit confusing, but worth the read.',3),(87,85435996,10,'Masterfully crafted, couldnt put it down.',5),(88,44497847,11,'Engrossing storyline, couldnt predict the twists.',4),(89,80723000,1,'Disappointing, expected more from this author.',2),(90,25255432,2,'Intriguing plot, kept me guessing until the end.',4),(91,49982206,3,'Couldnt finish it, lost interest.',2),(92,41587113,4,'Thought-provoking and beautifully written.',5),(93,97812512,5,'Enjoyable read, but lacked depth.',3),(94,89234240,6,'Couldnt connect with the characters, felt flat.',2),(95,97807312,7,'Absolutely loved it, couldnt put it down!',5),(96,97804212,8,'A gripping page-turner, highly recommend!',5),(97,72426505,9,'Couldnt get into it, too slow-paced for me.',2),(98,76491127,10,'Brilliantly written, kept me hooked until the end.',5);
/*!40000 ALTER TABLE `Book_Reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Books` (
  `ISBN` int NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `PublicationDate` date DEFAULT NULL,
  `AuthorID` int DEFAULT NULL,
  `PublisherID` int DEFAULT NULL,
  `LanguageID` int DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `LanguageID` (`LanguageID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`),
  CONSTRAINT `books_ibfk_3` FOREIGN KEY (`LanguageID`) REFERENCES `Languages` (`LanguageID`),
  CONSTRAINT `books_ibfk_4` FOREIGN KEY (`CategoryID`) REFERENCES `Categories` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES (10837102,'The Stranger','1942-05-01',3,33,1,1),(11076460,'The Curious Incident of the Dog in the Night-Time','2003-05-31',48,18,1,24),(17504512,'Animal Farm','1945-08-17',49,60,1,15),(18320974,'The Night Circus','2011-09-13',1,18,1,21),(24343983,'The Odyssey','0800-04-08',76,45,1,12),(25255432,'Born a Crime','2016-11-15',70,7,1,2),(26803132,'The Aeneid','2029-01-01',6,2,1,4),(27080734,'The Picture of Dorian Gray','1890-06-20',66,53,1,27),(28132263,'Middlemarch','1871-12-01',38,69,1,17),(28220192,'The Adventures of Huckleberry Finn','1884-12-10',33,71,1,36),(29166144,'American Psycho','1991-03-25',62,43,1,29),(29313892,'The Da Vinci Code','2003-03-18',57,18,1,24),(30657505,'The Grapes of Wrath','1939-04-14',15,15,1,17),(32951684,'The War of the Worlds','1898-01-01',81,46,1,40),(34374892,'Tess of the dUrbervilles','1891-01-01',46,58,1,32),(35435884,'Les Misérables','1862-04-03',75,47,1,39),(37400612,'Brave New World','1932-07-17',73,71,1,40),(38264743,'Crime and Punishment','1866-06-11',59,27,1,11),(40382087,'The Secret History','1992-09-29',65,72,1,24),(40619118,'Frankenstein','1818-01-01',44,24,1,42),(40957888,'The Iliad','0800-01-01',76,2,1,4),(41587113,'The Underground Railroad','2016-08-02',67,18,1,39),(43818341,'The Scarlet Letter','1850-03-16',22,74,1,42),(44497847,'A Thousand Splendid Suns','2007-05-22',56,40,1,39),(46730136,'Inferno','2013-05-14',57,18,1,24),(46935248,'A Brief History of Time','1988-04-01',26,10,1,23),(47282821,'The Count of Monte Cristo','1844-08-28',50,31,1,8),(47393709,'The Divine Comedy','1320-09-14',34,61,1,4),(49909809,'The Road Less Traveled','1978-06-01',24,65,1,44),(49982206,'The Tattooist of Auschwitz','2018-09-04',11,8,1,39),(50963856,'One Hundred Years of Solitude','1967-06-05',30,30,1,31),(53353280,'The Lord of the Rings','1954-07-29',82,20,1,21),(55293845,'Don Quixote','1605-01-16',35,54,1,36),(55376848,'White Teeth','2000-01-27',47,3,1,33),(55471743,'Life of Pi','2001-09-11',58,4,1,8),(55998263,'The Sound and the Fury','1929-10-07',14,62,1,22),(56016976,'The Shining','1977-01-28',69,18,1,25),(60882535,'The Power of Habit','2012-02-28',36,63,1,44),(62190549,'The Alchemist','1988-01-01',5,56,1,26),(62663041,'Jane Eyre','1847-10-16',10,38,1,42),(63020480,'David Copperfield','1850-06-14',2,23,1,17),(66135428,'The Brothers Karamazov','1880-12-12',59,27,1,11),(66485129,'The Goldfinch','2013-10-22',65,21,1,24),(66899063,'Wuthering Heights','1847-11-13',68,50,1,42),(66956374,'The Time Travelers Wife','2003-09-01',23,57,1,43),(67246828,'A Clash of Kings','1998-11-16',51,49,1,19),(68039162,'A Game of Thrones','1996-08-06',51,10,1,19),(68791964,'The Bell Jar','1963-01-14',8,17,1,18),(71557620,'The Help','2009-02-10',18,12,1,39),(71940131,'Gone Girl','2012-04-30',7,55,1,24),(72426505,'The Silent Patient','2019-02-05',25,6,1,24),(73355063,'The Help','2009-02-10',18,12,1,39),(76018675,'A Brief History of Time','1988-04-01',26,10,1,23),(76491127,'The Tattooist of Auschwitz','2018-09-04',11,8,1,39),(76564467,'Mrs. Dalloway','1925-05-14',72,1,1,22),(77279487,'Slaughterhouse-Five','1969-03-31',31,37,1,29),(77442289,'The Girl with the Dragon Tattoo','2005-08-01',42,51,1,38),(77869313,'The Chronicles of Narnia: The Lion, the Witch and the Wardrobe','1950-10-16',71,39,1,21),(79552931,'The Sun Also Rises','1926-10-22',16,52,1,22),(80567176,'A Tale of Two Cities','1859-04-30',2,9,1,34),(80723000,'Educated','2018-02-20',43,63,1,10),(83768946,'Great Expectations','1860-12-01',2,9,1,17),(84038207,'Sense and Sensibility','1811-10-30',19,73,1,6),(85435996,'Thinking, Fast and Slow','2011-10-25',4,19,1,20),(85639101,'Anna Karenina','1877-12-08',55,27,1,17),(86582836,'Moby-Dick','1851-10-18',60,64,1,8),(86590945,'Ulysses','1922-02-02',12,67,1,22),(87753333,'Walden','1854-08-09',79,48,1,14),(88262617,'The Jungle Book','1894-05-14',29,42,1,7),(89234240,'Educated','2018-02-20',43,63,1,10),(89468184,'The Book Thief','2006-03-14',27,14,1,39),(97800612,'To Kill a Mockingbird','1960-11-07',83,5,1,3),(97800912,'Catch-22','1961-10-10',20,65,1,29),(97801412,'Pride and Prejudice','1813-01-28',19,22,1,5),(97801512,'The Little Prince','1943-04-06',63,66,1,30),(97803012,'The Road','2006-09-26',61,72,1,13),(97803112,'The Catcher in the Rye','1951-07-16',64,21,1,3),(97803412,'The Hitchhikers Guide to the Galaxy','1979-10-12',52,41,1,40),(97803712,'Norwegian Wood','1987-09-20',28,29,1,43),(97803812,'The Handmaids Tale','1985-09-17',77,13,1,41),(97803912,'The Canterbury Tales','1400-01-01',39,34,1,9),(97804212,'Before We Were Yours','2017-06-06',74,59,1,39),(97804312,'The Hunger Games','2008-09-14',80,35,1,41),(97804412,'Gone with the Wind','1936-06-30',53,42,1,39),(97804512,'1984','1949-08-06',49,60,1,41),(97804812,'Heart of Darkness','1899-02-03',37,36,1,16),(97805212,'The Fault in Our Stars','2012-01-10',17,25,1,37),(97805512,'The Martian','2014-02-11',45,55,1,40),(97805712,'Lord of the Flies','1954-09-17',13,44,1,35),(97805912,'Dune','1965-06-01',41,16,1,40),(97806112,'The Hobbit','1937-09-21',82,11,1,21),(97806712,'War and Peace','1869-06-09',55,27,1,39),(97806812,'A Farewell to Arms','1929-09-27',16,52,1,28),(97807312,'Where the Crawdads Sing','2018-08-14',54,32,1,24),(97807412,'The Great Gatsby','1925-04-10',78,26,1,3),(97807512,'The Name of the Wind','2007-03-27',32,28,1,21),(97812512,'The Nightingale','2015-02-03',40,68,1,39),(97814012,'Beloved','1987-09-08',21,72,1,39),(97815912,'The Kite Runner','2003-05-29',56,40,1,39),(97819812,'The Adventures of Sherlock Holmes','1892-10-14',9,70,1,24);
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Borrowed_Books_Fines`
--

DROP TABLE IF EXISTS `Borrowed_Books_Fines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Borrowed_Books_Fines` (
  `FineID` int NOT NULL AUTO_INCREMENT,
  `CopyID` int DEFAULT NULL,
  `MemberID` int DEFAULT NULL,
  `FineAmount` decimal(10,2) DEFAULT NULL,
  `PaymentStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`FineID`),
  KEY `CopyID` (`CopyID`),
  KEY `MemberID` (`MemberID`),
  CONSTRAINT `borrowed_books_fines_ibfk_1` FOREIGN KEY (`CopyID`) REFERENCES `Book_Copies` (`CopyID`),
  CONSTRAINT `borrowed_books_fines_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `Member_Profile` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Borrowed_Books_Fines`
--

LOCK TABLES `Borrowed_Books_Fines` WRITE;
/*!40000 ALTER TABLE `Borrowed_Books_Fines` DISABLE KEYS */;
INSERT INTO `Borrowed_Books_Fines` VALUES (1,15,7,105.50,'Paid'),(2,28,3,52.50,'Paid'),(3,42,8,72.75,'Unpaid'),(4,56,2,121.00,'Paid'),(5,73,5,93.50,'Paid'),(6,81,11,312.50,'Unpaid'),(7,22,9,151.75,'Unpaid'),(8,36,1,548.25,'Unpaid'),(9,49,4,26.90,'Unpaid'),(10,65,6,141.20,'Paid'),(11,77,10,5.75,'Unpaid'),(12,12,2,190.00,'Unpaid'),(13,32,7,130.50,'Unpaid'),(14,44,1,532.25,'Paid'),(15,59,5,101.75,'Unpaid'),(16,68,10,72.75,'Paid'),(17,83,6,623.25,'Unpaid'),(18,94,9,84.00,'Paid'),(19,18,3,11.50,'Unpaid'),(20,26,11,24.25,'Paid');
/*!40000 ALTER TABLE `Borrowed_Books_Fines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Existentialist novel','Fictional works exploring themes of existential philosophy, often focusing on individual freedom, choice, and the meaning of existence.'),(2,'Autobiography','Personal narratives written by the subject, detailing their own life experiences and reflections.'),(3,'Fiction','Imaginative storytelling that may or may not be based on real events or characters.'),(4,'Epic Poetry','Long narrative poems often celebrating heroic deeds, legendary figures, or mythological tales.'),(5,'Classic Literature','Timeless literary works that have enduring significance and are widely regarded as exemplary or noteworthy.'),(6,'Romantic Novel','Fictional narratives emphasizing emotional and romantic themes, often centered around love stories.'),(7,'Childrens literature','Literature specifically created for and aimed at children, typically featuring age-appropriate themes, language, and illustrations.'),(8,'Adventure Fiction','Narrative works characterized by exciting and daring exploits, often involving travel, exploration, or risk-taking.'),(9,'Literature','Written works, including novels, poetry, plays, and essays, valued for their artistic merit, intellectual depth, and cultural significance.'),(10,'Memoir','Personal accounts or recollections of ones own experiences, often focusing on specific periods, events, or themes in the authors life.'),(11,'Philosophical novel','Fictional narratives that explore philosophical concepts, debates, or questions, often through character development and plot.'),(12,'Epic poetry','Long narrative poems often celebrating heroic deeds, legendary figures, or mythological tales.'),(13,'Post-apocalyptic Fiction','Fiction set in a world or society following a catastrophic event, exploring themes of survival, adaptation, and rebuilding.'),(14,'Philosophical literature','Written works that delve into philosophical ideas, theories, or inquiries, often presented in literary form.'),(15,'Political Satire','Literary works that use humor, irony, or sarcasm to critique or ridicule political figures, institutions, or ideologies.'),(16,'Novella','Narrative works shorter than a novel but longer than a short story, offering a focused exploration of character, theme, or plot.'),(17,'Realism','Literary movement or style characterized by the depiction of ordinary life, often focusing on everyday experiences and social realities.'),(18,'Semi-autobiographical novel','Fictional works that draw heavily from the authors own life experiences, blurring the lines between autobiography and fiction.'),(19,'Epic Fantasy','Narrative works set in fantastical worlds featuring epic quests, magical elements, and grand conflicts between forces of good and evil.'),(20,'Psychology','Literature that explores psychological concepts, theories, or phenomena, offering insights into human behavior, cognition, and emotion.'),(21,'Fantasy','Fictional narratives set in imaginary worlds or featuring fantastical elements such as magic, mythical creatures, or supernatural powers.'),(22,'Modernist novel','Literary works produced during the modernist literary movement, characterized by experimental forms, stream-of-consciousness narration, and fragmented structures.'),(23,'Science','Written works that explore scientific principles, theories, discoveries, or advancements, aimed at both general and specialized audiences.'),(24,'Mystery','Narrative works centered around the investigation and resolution of a puzzling or enigmatic event, often involving crime, detection, and suspense.'),(25,'Horror','Literary genre focused on eliciting fear, terror, or dread in the reader, often through supernatural, grotesque, or macabre elements.'),(26,'Quest Fiction','Narrative works in which characters embark on a journey or mission, often facing challenges, obstacles, and personal growth along the way.'),(27,'Philosophical fiction','Fictional narratives that use storytelling as a means to explore philosophical themes, ideas, or questions.'),(28,'War novel','Fictional works that depict war and its impact on individuals, societies, and cultures, often exploring themes of heroism, sacrifice, and trauma.'),(29,'Satirical novel','Narrative works characterized by satire, employing humor, irony, or sarcasm to criticize or lampoon aspects of society, politics, or human behavior.'),(30,'Childrens Literature','Literary works specifically created for children, designed to entertain, educate, or inspire young readers.'),(31,'Magic Realism','Narrative genre blending realistic settings with magical or fantastical elements, often exploring themes of identity, culture, and perception.'),(32,'Tragedy','Dramatic works depicting the downfall or suffering of a protagonist, often due to a tragic flaw or external circumstances, eliciting feelings of pity or fear.'),(33,'Multicultural Fiction','Literary works that explore themes of cultural diversity, identity, and cross-cultural experiences, often reflecting the perspectives of marginalized or underrepresented groups.'),(34,'Historical Novel','Fictional narratives set in the past, often incorporating real historical events, figures, or settings, offering insights into different time periods and societies.'),(35,'Allegorical Novel','Narrative works in which characters, events, or settings represent abstract ideas.'),(36,'Picaresque novel','Narrative works featuring a roguish, often humorous protagonist who travels through various adventures and encounters.'),(37,'Young Adult Fiction','Literature aimed at adolescent readers, typically featuring themes and characters relevant to the experiences and interests of young adults.'),(38,'Crime Fiction','Narrative works focused on crime, investigation, and detection, often featuring detectives, criminals, and suspenseful plot twists.'),(39,'Historical Fiction','Fictional narratives set in the past, drawing inspiration from historical events, figures, and settings, while often incorporating imaginative elements.'),(40,'Science Fiction','Narrative works exploring speculative or futuristic concepts, often centered around science, technology, and their potential impact on society.'),(41,'Dystopian Fiction','Literature set in a dystopian society or future, characterized by oppressive social control, dehumanization, and often a bleak outlook on humanity.'),(42,'Gothic Fiction','Literary genre characterized by a dark, mysterious atmosphere, supernatural elements, and themes of horror, death, and decay.'),(43,'Romance','Narrative works focused on romantic relationships, love, and emotional connections between characters.'),(44,'Self-help','Literature aimed at personal development and improvement, offering advice, strategies, and insights for achieving success, happiness, or fulfillment.');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fine_Installments`
--

DROP TABLE IF EXISTS `Fine_Installments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fine_Installments` (
  `InstallmentID` int NOT NULL AUTO_INCREMENT,
  `FineID` int DEFAULT NULL,
  `InstallmentNumber` int DEFAULT NULL,
  `InstallmentAmount` decimal(10,2) DEFAULT NULL,
  `IssuerReceiverID` int DEFAULT NULL,
  PRIMARY KEY (`InstallmentID`),
  KEY `FineID` (`FineID`),
  KEY `IssuerReceiverID` (`IssuerReceiverID`),
  CONSTRAINT `fine_installments_ibfk_1` FOREIGN KEY (`FineID`) REFERENCES `Borrowed_Books_Fines` (`FineID`),
  CONSTRAINT `fine_installments_ibfk_2` FOREIGN KEY (`IssuerReceiverID`) REFERENCES `Book_Issuer_Receiver` (`IssuerReceiverID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fine_Installments`
--

LOCK TABLES `Fine_Installments` WRITE;
/*!40000 ALTER TABLE `Fine_Installments` DISABLE KEYS */;
INSERT INTO `Fine_Installments` VALUES (1,5,2,50.00,1),(2,10,3,75.00,2),(3,15,4,60.00,1),(4,7,5,80.00,2),(5,12,6,55.00,1),(6,3,7,70.00,2),(7,18,8,65.00,1),(8,2,9,45.00,2),(9,9,10,85.00,1),(10,11,2,40.00,2),(11,6,3,65.00,1),(12,19,4,55.00,2),(13,8,5,70.00,1),(14,17,6,50.00,2),(15,4,7,80.00,1),(16,13,8,60.00,2),(17,20,9,45.00,1),(18,1,10,75.00,2),(19,14,2,55.00,1),(20,16,3,70.00,2);
/*!40000 ALTER TABLE `Fine_Installments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Languages`
--

DROP TABLE IF EXISTS `Languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Languages` (
  `LanguageID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`LanguageID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Languages`
--

LOCK TABLES `Languages` WRITE;
/*!40000 ALTER TABLE `Languages` DISABLE KEYS */;
INSERT INTO `Languages` VALUES (1,'English','English is an international language spoken by millions of people worldwide, making it one of the most widely used languages for communication, literature and education.');
/*!40000 ALTER TABLE `Languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Librarians`
--

DROP TABLE IF EXISTS `Librarians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Librarians` (
  `LibrarianID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `ContactInformation` varchar(100) DEFAULT NULL,
  `JobRole` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LibrarianID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Librarians`
--

LOCK TABLES `Librarians` WRITE;
/*!40000 ALTER TABLE `Librarians` DISABLE KEYS */;
INSERT INTO `Librarians` VALUES (1,'Alice Johnson','alice@example.com','Head Librarian'),(2,'Bob Smith','bob@example.com','Assistant Librarian');
/*!40000 ALTER TABLE `Librarians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member_Profile`
--

DROP TABLE IF EXISTS `Member_Profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Member_Profile` (
  `MemberID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `ContactInformation` varchar(100) DEFAULT NULL,
  `MembershipStatus` varchar(20) DEFAULT NULL,
  `Training` text,
  `HighestDegree` varchar(100) DEFAULT NULL,
  `Awards` text,
  `MembershipExpire` date DEFAULT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member_Profile`
--

LOCK TABLES `Member_Profile` WRITE;
/*!40000 ALTER TABLE `Member_Profile` DISABLE KEYS */;
INSERT INTO `Member_Profile` VALUES (1,'John Smith','john@example.com','Active','Data Analysis with Python','Master of Library and Information Science','Best Librarian Award 2023','2024-12-31'),(2,'Alice Johnson','alice@example.com','Active','Web Development Fundamentals','Bachelor of Arts in English Literature','Outstanding Service Award 2022','2024-12-31'),(3,'Michael Davis','michael@example.com','Active','Graphic Design Principles','Bachelor of Science in Computer Science','Employee of the Month May 2024','2024-12-31'),(4,'Emily Brown','emily@example.com','Suspended','Marketing Strategies and Analytics','Master of Business Administration','Certificate of Excellence in Customer Service','2024-12-31'),(5,'David Wilson','david@example.com','Active','Financial Planning and Analysis','Bachelor of Arts in Sociology','Volunteer of the Year 2023','2024-12-31'),(6,'Sarah Miller','sarah@example.com','Expired','Project Management Essentials','Associate of Arts in Education','Top Borrower Award 2022','2023-09-15'),(7,'Ryan Thompson','ryan@example.com','Active','Creative Writing Workshop','Bachelor of Science in Information Technology','Customer Satisfaction Award 2024','2024-12-31'),(8,'Jessica Martinez','jessica@example.com','Expired','Digital Marketing Fundamentals','Master of Library and Information Science','Community Engagement Award 2021','2022-11-30'),(9,'Daniel Clark','daniel@example.com','Suspended','Cybersecurity Basics','Bachelor of Arts in History','Library Innovation Award 2023','2024-12-31'),(10,'Emma Lee','emma@example.com','Active','Public Speaking Mastery','Bachelor of Science in Psychology','Reader of the Month April 2024','2024-12-31'),(11,'Oliver Harris','oliver@example.com','Active','Software Development Fundamentals','Associate of Applied Science in Computer Information Systems','Early Adopter Award 2023','2024-12-31');
/*!40000 ALTER TABLE `Member_Profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Publishers`
--

DROP TABLE IF EXISTS `Publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Publishers` (
  `PublisherID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `ContactInformation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PublisherID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Publishers`
--

LOCK TABLES `Publishers` WRITE;
/*!40000 ALTER TABLE `Publishers` DISABLE KEYS */;
INSERT INTO `Publishers` VALUES (1,'Hogarth Press','Richmond','hogarthpress@example.com'),(2,'None','Dhaka','none@example.com'),(3,'Hamish Hamilton','London','hamilton@example.com'),(4,'Knopf Canada','Toronto','knopfcanada@example.com'),(5,'Harper Perennial Modern Classics','Kolkata','harperperennial@example.com'),(6,'Celadon Books','New York','celadon@example.com'),(7,'Spiegel & Grau','New York','spiegelgrau@example.com'),(8,'Harper','London','harper@example.com'),(9,'Chapman & Hall','London','chapmanhall@example.com'),(10,'Bantam Books','Dhaka','bantambooks@example.com'),(11,'George Allen & Unwin','London','georgeallenunwin@example.com'),(12,'Amy Einhorn Books','Los Angeles','amyeinhorn@example.com'),(13,'McClelland & Stewart','Toronto','mcclellandstewart@example.com'),(14,'Knopf','New York','knopf@example.com'),(15,'The Viking Press','New York','vikingpress@example.com'),(16,'Chilton Books','London','chiltonbooks@example.com'),(17,'Heinemann','London','heinemann@example.com'),(18,'Doubleday','New York','doubleday@example.com'),(19,'Farrar, Straus and Giroux','New York','farrarstrausgiroux@example.com'),(20,'Allen & Unwin','Sydney','allenunwin@example.com'),(21,'Little, Brown and Company','New York','littlebrown@example.com'),(22,'T. Egerton, Whitehall','London','tegerton@example.com'),(23,'Bradbury & Evans','London','bradburyevans@example.com'),(24,'Lackington, Hughes, Harding, Mavor & Jones','London','lackington@example.com'),(25,'Dutton Books','New York','duttonbooks@example.com'),(26,'Charles Scribners Sons','New York','scribnerssons@example.com'),(27,'The Russian Messenger','Delhi','russianmessenger@example.com'),(28,'DAW Books','New York','dawbooks@example.com'),(29,'Kodansha','Tokyo','kodansha@example.com'),(30,'Harper & Row','New York','harperrow@example.com'),(31,'Ption','Paris','ption@example.com'),(32,'G.P. Putnams Sons','New York','putnams@example.com'),(33,'Gallimard','Paris','gallimard@example.com'),(34,'William Caxton','London','caxton@example.com'),(35,'Scholastic','Tokyo','scholastic@example.com'),(36,'Blackwoods Magazine','Edinburgh','blackwood@example.com'),(37,'Delacorte Press','New York','delacorte@example.com'),(38,'Smith, Elder & Co.','London','smithelder@example.com'),(39,'Geoffrey Bles','London','geoffreybles@example.com'),(40,'Riverhead Books','New York','riverheadbooks@example.com'),(41,'Pan Books','London','panbooks@example.com'),(42,'Macmillan Publishers','London','macmillan@example.com'),(43,'Vintage Books','New York','vintage@example.com'),(44,'Faber and Faber','London','faberfaber@example.com'),(45,'Smyrna','Mumbai','smyrna@example.com'),(46,'William Heinemann','London','williamheinemann@example.com'),(47,'A. Lacroix, Verboeckhoven & Cie.','Brussels','lacroixverboeckhoven@example.com'),(48,'Ticknor and Fields','Boston','ticknorfieds@example.com'),(49,'Bantam Spectra','Singapore','bantamspectra@example.com'),(50,'Thomas Cautley Newby','London','thomascautley@example.com'),(51,'Norstedts Farlag','Stockholm','norstedts@example.com'),(52,'Scribners','New York','scribners@example.com'),(53,'Lippincotts Monthly Magazine','Rome','lippincott@example.com'),(54,'Francisco de Robles','Madrid','franciscode@example.com'),(55,'Crown Publishing Group','New York','crownpub@example.com'),(56,'HarperTorch','Washington','harpertorch@example.com'),(57,'MacAdam/Cage','San Francisco','macadamcage@example.com'),(58,'James R. Osgood, McIlvaine & Co.','London','osgoodmcilvaine@example.com'),(59,'Ballantine Books','New York','ballantinebooks@example.com'),(60,'Secker & Warburg','London','seckerwarburg@example.com'),(61,'A. Nonesuch Press','London','nonesuch@example.com'),(62,'Jonathan Cape & Harrison Smith','New York','jonathancape@example.com'),(63,'Random House','New York','randomhouse@example.com'),(64,'Richard Bentley (UK)','London','richardbentley@example.com'),(65,'Simon & Schuster','New York','simonschuster@example.com'),(66,'Reynal & Hitchcock','Cumilla','reynalhitchcock@example.com'),(67,'Sylvia Beach','Paris','sylviabeach@example.com'),(68,'St. Martins Press','New York','stmartins@example.com'),(69,'William Blackwood & Sons','Edinburgh','blackwoodsons@example.com'),(70,'George Newnes','London','georgenewnes@example.com'),(71,'Chatto & Windus','London','chatto@example.com'),(72,'Alfred A. Knopf','New York','knopf@example.com'),(73,'Thomas Egerton, Military Library','London','tegertonmil@example.com'),(74,'Ticknor, Reed, and Fields','Boston','ticknorreed@example.com');
/*!40000 ALTER TABLE `Publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shelves`
--

DROP TABLE IF EXISTS `Shelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shelves` (
  `ShelfID` int NOT NULL AUTO_INCREMENT,
  `Location` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ShelfID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shelves`
--

LOCK TABLES `Shelves` WRITE;
/*!40000 ALTER TABLE `Shelves` DISABLE KEYS */;
INSERT INTO `Shelves` VALUES (1,'1st Floor','Wooden'),(2,'1st Floor','Steel'),(3,'2nd Floor','Wooden'),(4,'2nd Floor','Steel'),(5,'3rd Floor','Wooden'),(6,'3rd Floor','Steel'),(7,'1st Floor','Wooden'),(8,'2nd Floor','Steel'),(9,'3rd Floor','Wooden'),(10,'1st Floor','Steel');
/*!40000 ALTER TABLE `Shelves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26  3:28:00
