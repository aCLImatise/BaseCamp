from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Tree_Py_V0_1_0 = CommandToolBuilder(tool="tree.py", base_command=["tree.py"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_nb_cpus", input_type=Int(optional=True), prefix="--nb-cpus", doc=InputDocumentation(doc="The maximum number of CPUs used. [Default: 1]")), ToolInput(tag="in_input_sequences", input_type=File(optional=True), prefix="--input-sequences", doc=InputDocumentation(doc="Path to input FASTA file of OTU seed sequences.\nWarning: FROGS Tree is only working on less than 10000\nsequences!")), ToolInput(tag="in_biom_file", input_type=File(optional=True), prefix="--biom-file", doc=InputDocumentation(doc="Path to the abundance BIOM file.")), ToolInput(tag="in_out_tree", input_type=File(optional=True), prefix="--out-tree", doc=InputDocumentation(doc="Path to store resulting Newick tree file. (format:\nnwk) [Default: tree.nwk]")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="The HTML file containing the graphs. [Default:\ntree.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several informations on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tree_Py_V0_1_0().translate("wdl")

