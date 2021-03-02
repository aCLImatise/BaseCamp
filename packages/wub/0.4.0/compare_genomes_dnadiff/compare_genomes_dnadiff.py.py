from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, String

Compare_Genomes_Dnadiff_Py_V0_1_0 = CommandToolBuilder(tool="compare_genomes_dnadiff.py", base_command=["compare_genomes_dnadiff.py"], inputs=[ToolInput(tag="in_save_pickled_results", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Save pickled results in this file (None).")), ToolInput(tag="in_save_dnadiff_report", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="Save dnadiff report in this file (None).")), ToolInput(tag="in_use_working_directory", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Use this working directory instead of a temporary\ndirectory (None).")), ToolInput(tag="in_keep_dnadiff_result", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Keep dnadiff result files (False).")), ToolInput(tag="in_print_dnadiff_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print out dnadiff output (False).")), ToolInput(tag="in_reference_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Reference fasta.")), ToolInput(tag="in_target_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="Target fasta."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Genomes_Dnadiff_Py_V0_1_0().translate("wdl", allow_empty_container=True)

