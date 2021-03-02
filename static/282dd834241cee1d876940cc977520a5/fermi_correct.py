from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Fermi_Correct_V0_1_0 = CommandToolBuilder(tool="fermi_correct", base_command=["fermi", "correct"], inputs=[ToolInput(tag="in_kmer_length_auto", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length; -1 for auto [-1]")), ToolInput(tag="in_minimum_kmer_occurrences", input_type=Int(optional=True), prefix="-O", doc=InputDocumentation(doc="minimum (k+1)-mer occurrences [3]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_max_fraction_corrected", input_type=Float(optional=True), prefix="-C", doc=InputDocumentation(doc="max fraction of corrected bases [0.30]")), ToolInput(tag="in_trim_read_bp", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="trim read down to INT bp; 0 to disable [0]")), ToolInput(tag="in_step_size_jumping", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="step size for the jumping heuristic; 0 to disable [5]")), ToolInput(tag="in_keep_badunfixable_reads", input_type=Boolean(optional=True), prefix="-K", doc=InputDocumentation(doc="keep bad/unfixable reads")), ToolInput(tag="in_reads_dot_fmd", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_dot_fq", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Correct_V0_1_0().translate("wdl", allow_empty_container=True)

