from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Esl_Alimerge_V0_1_0 = CommandToolBuilder(tool="esl_alimerge", base_command=["esl-alimerge"], inputs=[ToolInput(tag="in_output_final_alignment", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output the final alignment to file <f>, not stdout")), ToolInput(tag="in_print_info_merge", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": print info on merge to stdout; requires -o")), ToolInput(tag="in_small", input_type=Boolean(optional=True), prefix="--small", doc=InputDocumentation(doc=": use minimal RAM (RAM usage will be independent of aln sizes)")), ToolInput(tag="in_rf_only", input_type=Boolean(optional=True), prefix="--rfonly", doc=InputDocumentation(doc=": remove all columns that are gaps in GC RF annotation")), ToolInput(tag="in_out_format", input_type=String(optional=True), prefix="--outformat", doc=InputDocumentation(doc=": specify that output aln be format <s> (see choices above)")), ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="--rna", doc=InputDocumentation(doc=": alignments to merge are RNA alignments")), ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--dna", doc=InputDocumentation(doc=": alignments to merge are DNA alignments")), ToolInput(tag="in_amino", input_type=Boolean(optional=True), prefix="--amino", doc=InputDocumentation(doc=": alignments to merge are protein alignments")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="--list", doc=InputDocumentation(doc="")), ToolInput(tag="in_pfam", input_type=String(), position=0, doc=InputDocumentation(doc="a2m")), ToolInput(tag="in_psiblast", input_type=String(), position=1, doc=InputDocumentation(doc="afa"))], outputs=[ToolOutput(tag="out_output_final_alignment", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_final_alignment", type_hint=File()), doc=OutputDocumentation(doc=": output the final alignment to file <f>, not stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Alimerge_V0_1_0().translate("wdl", allow_empty_container=True)

