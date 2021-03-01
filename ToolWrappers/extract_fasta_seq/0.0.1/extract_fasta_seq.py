from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, File

Extract_Fasta_Seq_V0_1_0 = CommandToolBuilder(tool="extract_fasta_seq", base_command=["extract_fasta_seq"], inputs=[ToolInput(tag="in_query_list_have", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="[<str> ...]  query list. '-s1' and '-d1' have no effect on this")), ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[<subject file>]   subject file [stdin]")), ToolInput(tag="in_s_one", input_type=Int(optional=True), prefix="-s1", doc=InputDocumentation(doc="query file sep_pattern [\s+]")), ToolInput(tag="in_s_two", input_type=Int(optional=True), prefix="-s2", doc=InputDocumentation(doc="subject file sep_pattern [\s+]")), ToolInput(tag="in_done", input_type=Boolean(optional=True), prefix="-d1", doc=InputDocumentation(doc="[<int>]           which field in the query_file is to used? [0]")), ToolInput(tag="in_d_two", input_type=Boolean(optional=True), prefix="-d2", doc=InputDocumentation(doc="[<int>]           which field in the subject_file is to used? useful for\nfinding out all sequences in the subject_file whose\nseqids equal to the queryids [0]")), ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[<outfile>]        outfile [stdout]")), ToolInput(tag="in_invert_the_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="invert the output [False]")), ToolInput(tag="in_verbose_output", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="verbose output")), ToolInput(tag="in_lazy", input_type=Boolean(optional=True), prefix="--lazy", doc=InputDocumentation(doc="Stop searching once each required seqid has at least\none sequence found, which can be problems if some\nrequired seqids have more than sequences! Works only\nfor non-invert mode. [False]")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_option_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-f <query file>       query list file, one line should contain only one"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Fasta_Seq_V0_1_0().translate("wdl", allow_empty_container=True)

