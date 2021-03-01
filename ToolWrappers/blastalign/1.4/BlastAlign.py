from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Blastalign_V0_1_0 = CommandToolBuilder(tool="BlastAlign", base_command=["BlastAlign"], inputs=[ToolInput(tag="in_maximum_percentage_optional", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="<maximum percentage of gaps allowed in any one sequence in the final alignment> Optional but we find 0.5 the most useful; default = 95, i.e. only removing sequences with extremely short matches")), ToolInput(tag="in_name_reference_sequence", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<name of reference sequence> Optional; default is to search for best candidate (if entered, the sequence will be extracted, written to a separate file, and blasted against the original input file)")), ToolInput(tag="in_names_commaseparated_sequences", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="<names of comma-separated sequences to be excluded from this analysis> Optional")), ToolInput(tag="in_tf_retain_names", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="<T/F> Retain original names in output files T(rue)/F(alse). Optional (default = T;) option F is to output the 15 character name abbreviations (stripped of potentially problematic characters) that is used in the program")), ToolInput(tag="in_number_sequences_used", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="<Number of sequences to be used in initial search for reference sequence> Optional; default is to find the reference sequence by blasting all sequences against all sequences, only randomly subsampling when it thinks the blast output file might be too large (-s over-rides this)")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blastalign_V0_1_0().translate("wdl", allow_empty_container=True)

