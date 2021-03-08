from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Remove_Chimera_Py_V0_1_0 = CommandToolBuilder(tool="remove_chimera.py", base_command=["remove_chimera.py"], inputs=[ToolInput(tag="in_nb_cpus", input_type=Int(optional=True), prefix="--nb-cpus", doc=InputDocumentation(doc="The maximum number of CPUs used. [Default: 1]")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_input_fast_a", input_type=String(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="The cluster sequences (format: FASTA).")), ToolInput(tag="in_input_biom", input_type=File(optional=True), prefix="--input-biom", doc=InputDocumentation(doc="The abundance file for clusters by sample (format:\nBIOM).")), ToolInput(tag="in_input_count", input_type=File(optional=True), prefix="--input-count", doc=InputDocumentation(doc="The counts file for clusters by sample (format: TSV).")), ToolInput(tag="in_non_chimera", input_type=File(optional=True), prefix="--non-chimera", doc=InputDocumentation(doc="sequences file without chimera (format: FASTA).\n[Default: remove_chimera.fasta]")), ToolInput(tag="in_out_abundance", input_type=File(optional=True), prefix="--out-abundance", doc=InputDocumentation(doc="Abundance file without chimera (format: BIOM or TSV).\n[Default: remove_chimera_abundance.biom or\nremove_chimera_abundance.tsv]")), ToolInput(tag="in_summary", input_type=File(optional=True), prefix="--summary", doc=InputDocumentation(doc="The HTML file containing the graphs. [Default:\nremove_chimera.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Chimera_Py_V0_1_0().translate("wdl")

