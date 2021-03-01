from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Fermi2_Correct_V0_1_0 = CommandToolBuilder(tool="fermi2_correct", base_command=["fermi2", "correct"], inputs=[ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_kmer_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length [17]")), ToolInput(tag="in_min_occurrence_solid", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="min occurrence for a solid k-mer [3]")), ToolInput(tag="in_correct_singletons_int", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="correct singletons out of INT bases [17]")), ToolInput(tag="in_get_solid_list", input_type=File(optional=True), prefix="-h", doc=InputDocumentation(doc="get solid k-mer list from FILE [null]")), ToolInput(tag="in_protect_qint_bases", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="protect Q>INT bases unless they occur once [30]")), ToolInput(tag="in_no_more_corrections", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="no more than 4 corrections per INT-bp window [8]")), ToolInput(tag="in_drop_errorprone_reads", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="drop error-prone reads")), ToolInput(tag="in_print_original_name", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="print the original read name")), ToolInput(tag="in_index_dot_fmd", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_dot_fq", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi2_Correct_V0_1_0().translate("wdl", allow_empty_container=True)

