from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float, Boolean

Fu_Primers_V0_1_0 = CommandToolBuilder(tool="fu_primers", base_command=["fu-primers"], inputs=[ToolInput(tag="in_first_pair", input_type=String(optional=True), prefix="--first-pair", doc=InputDocumentation(doc="First sequence in pair")), ToolInput(tag="in_second_pair", input_type=String(optional=True), prefix="--second-pair", doc=InputDocumentation(doc="Second sequence in pair (can be guessed)")), ToolInput(tag="in_primer_for", input_type=String(optional=True), prefix="--primer-for", doc=InputDocumentation(doc="Sequence of the forward primer [default: CCTACGGGNGGCWGCAG]")), ToolInput(tag="in_primer_rev", input_type=String(optional=True), prefix="--primer-rev", doc=InputDocumentation(doc="Sequence of the reverse primer [default: GGACTACHVGGGTATCTAATCC]")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Minimum sequence length after trimming [default: 50]")), ToolInput(tag="in_pattern_r_one", input_type=Int(optional=True), prefix="--pattern-R1", doc=InputDocumentation(doc="Tag in first pairs filenames [default: auto]")), ToolInput(tag="in_pattern_r_two", input_type=Int(optional=True), prefix="--pattern-R2", doc=InputDocumentation(doc="Tag in second pairs filenames [default: auto]")), ToolInput(tag="in_primer_t_hrs", input_type=Float(optional=True), prefix="--primer-thrs", doc=InputDocumentation(doc="Minimum amount of matches over total length [default: 1.0]")), ToolInput(tag="in_primer_mismatches", input_type=Int(optional=True), prefix="--primer-mismatches", doc=InputDocumentation(doc="Maximum number of missmatches allowed [default: 0]")), ToolInput(tag="in_primer_min_matches", input_type=Int(optional=True), prefix="--primer-min-matches", doc=InputDocumentation(doc="Minimum numer of matches required [default: 8]")), ToolInput(tag="in_primer_pos_margin", input_type=Int(optional=True), prefix="--primer-pos-margin", doc=InputDocumentation(doc="Number of bases from the extremity of the sequence allowed [default: 0]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output")), ToolInput(tag="in_ampli_check", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seqfu:0.8.7--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fu_Primers_V0_1_0().translate("wdl")

