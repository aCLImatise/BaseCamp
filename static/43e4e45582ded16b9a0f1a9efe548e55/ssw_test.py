from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Ssw_Test_V0_1_0 = CommandToolBuilder(tool="ssw_test", base_command=["ssw_test"], inputs=[ToolInput(tag="in_n_positive_integer_weight", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="N is a positive integer for weight match in genome sequence alignment. [default: 2]")), ToolInput(tag="in_n_positive_weight", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="N is a positive integer. -N will be used as weight mismatch in genome sequence alignment. [default: 2]")), ToolInput(tag="in_n_the_opening", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="N is a positive integer. -N will be used as the weight for the gap opening. [default: 3]")), ToolInput(tag="in_the_gap_extension", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="N is a positive integer. -N will be used as the weight for the gap extension. [default: 1]")), ToolInput(tag="in_do_sequence_alignment", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Do protein sequence alignment. Without this option, the ssw_test will do genome sequence alignment.")), ToolInput(tag="in_file_blosum_pam", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="FILE is either the Blosum or Pam weight matrix. [default: Blosum50]")), ToolInput(tag="in_return_alignment_path", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Return the alignment path.")), ToolInput(tag="in_n_positive_integer_only", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="N is a positive integer. Only output the alignments with the Smith-Waterman score >= N.")), ToolInput(tag="in_best_alignment_picked", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="The best alignment will be picked between the original read alignment and the reverse complement read alignment.")), ToolInput(tag="in_output_sam_format", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Output in SAM format. [default: no header]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssw_Test_V0_1_0().translate("wdl", allow_empty_container=True)

