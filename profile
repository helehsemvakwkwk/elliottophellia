#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��n* �_��p����������P�/��H � `
|ϵq�r�;��R��*�C�.��4j2M1OMOI����MOF��d��SC��4�I�0�Кh=@=F�I&BI���##C@�� �i� 4  ` � 	�           DEOJ~�4z4�         �4A�` &            	Є�D0���x�����M�z�i����ڃ�41���h,@������B{/��Oc�}u�m��M�� ;�M���Qy���v��\��7��z:��0 ��v�$�3u��}�+�uk&A�̚�9��A�)��c3���,��Qe7�a���9�^<T���	y�Z*��!�A����aT��K"��tcV���v���^.&77���_.�Wt����i�CA���ײ���GB�w����pP\>ft�#-��.���X��L"��G�W%T���h8F�|��",<��\8J%�s�[��C���� P�d�p"�����"�m�,�6K@fU��FnVE�قnpf��V�+0�d�VxO��N�qHয়I��AQV������.f
u�_/���ה��2kaEK��,+���i��F)�#��O���(Y�����p�1�Θ�}���B8�G42R"��ڊ=j�`�rYX��s��pa��f����%Nőv�a3���v&G,�����R֡�Ϝ�8��`6�I��fM��r&��Y�&�6&?ί�AG�!\�f!	L(q��e��6��׊S}UzLUp-��*4��y�Y³�tr�#���b�5d���]r�Ä$�DH9s��w~a��7��7�-�\ϊf;��y�[r��A����b�萑!�
]��������;'VJT���*��d�&}� �J���	$
mf`]��e�g����p>�ay�U<�9�k�TIV�4�'��I��L��<��Tl�NS��E2�`��Α�{A���N��%9ȩ C,ccmQ��nj�rh���Af􏐃�~�%J
w�1�E?>K.���SA��j텋�_���V�Zi��c*}�!�I(�&�����4R��n���K�y����p9Rۈ�8�U���W�`����~J�����b�$�,�	��j�H/���=��'6:�AV��Y�ү�`��g�ha%�A����pkڕ��3B̗�ʬ�/:��&*�y�+��Ic���Ÿ��kbnfp��G���n%�%F�Ł��l<ʍ�3Jh�$jy%��]���bn�Җ��4S�f��	�cAAb'����Q[1��-X�H�NT4��пv��-�E�|�>@�0�]JT(��
X6s�b���̵3�Z�^����Y!'	Qq�� �q	]�n�j�nfb��&�,�(�?nZt�	pm��/lQ�]��V0B���gJ�$��Yt$�l���
�-�#�.CǺA�e�PzOj�d�e�%ZT)#=�F���D�$��0kC�-��ٍR� ��Yת�^*���}Έ32���h-9�c�Z����m1Շ�n+��U���a��M#������2Af��J�$W��5�����)�?7���½��W׌��2��Hbux-����ד��xM�%as5��$],LHT�z��ʑd4M5���A�@A�|Al�k����b��L�4�Ȗ)��Ի��21�eIh��E,)[ݴU����yT �ܫpX���:��Ð���FW����C(Tm����9�d��3�8Z�l�c�O�C�l:��ț�5z� ہ�ez�<a���#x�F!�@�F;�A�l�0Y
�� �Da˩"��Vr�0R*1\LF�u3�9m�b`w�B#fkݒ���0kTC�-�&�w(I֍����!u����gSJ|�2��t�����9S�t��i���f��͵�ms3�,�ߜw@��7�ٗ,�d�7F��T��?lĕ� ��6I�jr`�'X�D���E	�[k��'�e����L�v=��K0'
��ȐߒD��RH���C^ڇ`�I9BuAE��[��#Shn��|+��`Z����̙)�Q�`P2	%ª�s��P�e�,�8BV��E�+�E�����9t$	��!�$�l*([�,2K�s�� ��a�p͈nS	����\�sE��-dy��ffЖr[ù������V��M�-�MJ��M��0�j,/��BڲH�J�����l��F;�t�\h�/W�˱��q#�qO:�D�����SI�7�SEݴ dqKt��[�[�r�Tkz)B�j�fT��&Ā�*��؅� ���Z5������p_��i;��B�h�8A�N2���fM�IR���*��B��q�%�7��H3�m-%��L���K=M�L2��M�!�c�ɓ&R�9]�㌄a2g�T�Ugݸ"��Ѭ)��r6�o��.�]	�ww����XS�.��j�{�J8	)�hF>>=b,0M\f�B6��Q�s	�	/|0:�y�GW�݄�׏M��A@K~���`~��;-g�"�d��5z�NϷ,h���q��2��Ą��&��(�*
W�, �foAe��C��� � E)�
�XhpC{/�~�	w��fp�/���)�ǳqP