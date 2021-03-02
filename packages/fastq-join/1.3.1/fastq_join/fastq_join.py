from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Fastq_Join_V0_1_0 = CommandToolBuilder(tool="fastq_join", base_command=["fastq-join"], inputs=[ToolInput(tag="in_see__below", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="See 'Output' below")), ToolInput(tag="in_verifies_ids_match", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verifies that the 2 files probe id's match up to char C\nuse ' ' (space) for Illumina reads")), ToolInput(tag="in_npercent_maximum_difference", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="N-percent maximum difference (8)")), ToolInput(tag="in_nminimum_overlap", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="N-minimum overlap (6)")), ToolInput(tag="in_verbose_stitch_length", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Verbose stitch length report")), ToolInput(tag="in_no_reverse_complement", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="No reverse complement")), ToolInput(tag="in_allow_insert_read", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Allow insert < read length")), ToolInput(tag="in_read_one_dot_fq", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_two_dot_fq", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mate_dot_fq", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Join_V0_1_0().translate("wdl", allow_empty_container=True)

