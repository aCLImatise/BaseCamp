from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Sequence_Extract_V0_1_0 = CommandToolBuilder(tool="sequence_extract", base_command=["sequence", "extract"], inputs=[ToolInput(tag="in_bases", input_type=Boolean(optional=True), prefix="-bases", doc=InputDocumentation(doc="baselist extract bases as specified in the 'list' from each sequence")), ToolInput(tag="in_sequences", input_type=String(optional=True), prefix="-sequences", doc=InputDocumentation(doc="extract ordinal sequences as specified in the 'list'")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="-reverse", doc=InputDocumentation(doc="reverse the bases in the sequence")), ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="-complement", doc=InputDocumentation(doc="complement the bases in the sequence")), ToolInput(tag="in_rc", input_type=Boolean(optional=True), prefix="-rc", doc=InputDocumentation(doc="alias for -reverse -complement")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="-compress", doc=InputDocumentation(doc="compress homopolymer runs to one base")), ToolInput(tag="in_down_case", input_type=Int(optional=True), prefix="-downcase", doc=InputDocumentation(doc="print sequence if it is at least 'min' bases and at most 'max' bases long\na 'baselist' is a set of integers formed from any combination\nof the following, seperated by a comma:\nnum       a single number\nbgn-end   a range of numbers:  bgn <= end\nbases are spaced-based; -bases 0-2,4 will print the bases between\nthe first two spaces (the first two bases) and the base after the\nfourth space (the fifth base).\na 'seqlist' is a set of integers formed from any combination\nof the following, seperated by a comma:\nnum       a single number\nbgn-end   a range of numbers:  bgn <= end\nsequences are 1-based; -sequences 1,3-5 will print the first, third,\nfourth and fifth sequences.")), ToolInput(tag="in_sequence", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mode", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequence_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

