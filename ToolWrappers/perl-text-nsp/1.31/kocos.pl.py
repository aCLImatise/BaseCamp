from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Kocos_Pl_V0_1_0 = CommandToolBuilder(tool="kocos.pl", base_command=["kocos.pl"], inputs=[ToolInput(tag="in_literal", input_type=String(optional=True), prefix="--literal", doc=InputDocumentation(doc="Specify the target word directly on command line as a literal.")), ToolInput(tag="in_regex", input_type=File(optional=True), prefix="--regex", doc=InputDocumentation(doc="Specify a file containing Perl regular expression/s that define\nthe target word.")), ToolInput(tag="in_order", input_type=Int(optional=True), prefix="--order", doc=InputDocumentation(doc="Specify the value of K (K>0) to find the kth order co-occurrences.\nA Kth order co-occurrence is a word that co-occurs with a (K-1)th\norder co-occurrence of the target word.\nBy default, the value of K is set to 1 which simply lists the\nwords that co-occur with a given target word. When K is 2, all words\nthat co-occur with the words that co-occur with the target word are\nshown, and so on for higher orders.")), ToolInput(tag="in_trace", input_type=String(optional=True), prefix="--trace", doc=InputDocumentation(doc="Specify the name of a TRACEFILE to see a detailed trace report\nshowing  the chains of co-occurrences. A chain shows how a Kth\norder co-occurrence is reached as a sequence of K lower order\nco-occurrences.\ne.g. WORD->First->Second->Third..->Kth\nshows that 'First' is a first order co-occurrence of WORD,\n'Second' is a second order co-occurrence of WORD which co-occurs\nwith 'First'. 'Third' is a third order co-occurrence of WORD which\nco-occurs with 'Second' and so on until K is reached.")), ToolInput(tag="in_bigram", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kocos_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

