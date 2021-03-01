from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

_Cmfinder_Pl_V0_1_0 = CommandToolBuilder(tool="_cmfinder.pl", base_command=["_cmfinder.pl"], inputs=[ToolInput(tag="in_use_blast_search", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Do not use BLAST search to locate anchors")), ToolInput(tag="in_maximum_number_default", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="The maximum number of candidates in each sequence. Default 40. No bigger than 100.")), ToolInput(tag="in_minimum_length_default", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="The minimum length of candidates. Default 30")), ToolInput(tag="in_maximum_length_default", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="The maximum length of candidates. Default 100")), ToolInput(tag="in_fraction_sequences_expected", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="The fraction of the sequences expected to contain the motif. Default 0.80")), ToolInput(tag="in_s_one", input_type=Int(optional=True), prefix="-s1", doc=InputDocumentation(doc="The max number of output single stem-loop motifs")), ToolInput(tag="in_s_two", input_type=Int(optional=True), prefix="-s2", doc=InputDocumentation(doc="The max number of output double stem-loop motifs")), ToolInput(tag="in_combine", input_type=Boolean(optional=True), prefix="-combine", doc=InputDocumentation(doc="Combine the output motifs. Default False")), ToolInput(tag="in_hmm", input_type=Boolean(optional=True), prefix="-hmm", doc=InputDocumentation(doc="Apply HMM filter for speed up. Default false.")), ToolInput(tag="in_anchor", input_type=Boolean(optional=True), prefix="-anchor", doc=InputDocumentation(doc="[FASTA|BLAST|NONE]      Methods to compute the anchors"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Cmfinder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

