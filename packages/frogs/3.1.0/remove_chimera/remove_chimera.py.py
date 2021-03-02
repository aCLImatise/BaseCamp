from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Remove_Chimera_Py_V0_1_0 = CommandToolBuilder(tool="remove_chimera.py", base_command=["remove_chimera.py"], inputs=[ToolInput(tag="in_nb_cpus", input_type=Int(optional=True), prefix="--nb-cpus", doc=InputDocumentation(doc="The maximum number of CPUs used. [Default: 1]")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_input_fast_a", input_type=String(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="The cluster sequences (format: fasta).")), ToolInput(tag="in_input_biom", input_type=File(optional=True), prefix="--input-biom", doc=InputDocumentation(doc="The abundance file for clusters by sample (format:\nBIOM).")), ToolInput(tag="in_input_count", input_type=File(optional=True), prefix="--input-count", doc=InputDocumentation(doc="The abundance file for clusters by sample (format:\ncount).")), ToolInput(tag="in_non_chimera", input_type=File(optional=True), prefix="--non-chimera", doc=InputDocumentation(doc="sequences file without chimera (format: fasta).\n[Default: non_chimera.fasta]")), ToolInput(tag="in_out_abundance", input_type=File(optional=True), prefix="--out-abundance", doc=InputDocumentation(doc="Abundance file without chimera (format: BIOM or\ncount).")), ToolInput(tag="in_summary", input_type=String(optional=True), prefix="--summary", doc=InputDocumentation(doc="Report of the results (format: HTML). [Default:\nsummary.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Chimera_Py_V0_1_0().translate("wdl", allow_empty_container=True)

