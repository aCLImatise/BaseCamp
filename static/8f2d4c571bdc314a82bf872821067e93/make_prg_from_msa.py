from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Make_Prg_From_Msa_V0_1_0 = CommandToolBuilder(tool="make_prg_from_msa", base_command=["make_prg", "from_msa"], inputs=[ToolInput(tag="in_alignment_format", input_type=String(optional=True), prefix="--alignment_format", doc=InputDocumentation(doc="Alignment format of MSA, must be a biopython AlignIO\ninput alignment_format. See\nhttp://biopython.org/wiki/AlignIO. Default: fasta")), ToolInput(tag="in_max_nesting", input_type=Int(optional=True), prefix="--max_nesting", doc=InputDocumentation(doc="Maximum number of levels to use for nesting. Default:\n5")), ToolInput(tag="in_min_match_length", input_type=Int(optional=True), prefix="--min_match_length", doc=InputDocumentation(doc="Minimum number of consecutive characters which must be\nidentical for a match. Default: 7")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_no_overwrite", input_type=Boolean(optional=True), prefix="--no_overwrite", doc=InputDocumentation(doc="Do not overwrite pre-existing prg file with same name")), ToolInput(tag="in_msa", input_type=String(), position=0, doc=InputDocumentation(doc="Input file: a multiple sequence alignment in supported\nalignment_format. If not in aligned fasta\nalignment_format, use -f to input the alignment_format\ntype"))], outputs=[], container="quay.io/biocontainers/make_prg:0.1.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Prg_From_Msa_V0_1_0().translate("wdl")

