from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Tree_Py_V0_1_0 = CommandToolBuilder(tool="tree.py", base_command=["tree.py"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_nb_cpus", input_type=Int(optional=True), prefix="--nb-cpus", doc=InputDocumentation(doc="The maximum number of CPUs used. [Default: 1]")), ToolInput(tag="in_input_otu", input_type=File(optional=True), prefix="--input-otu", doc=InputDocumentation(doc="Path to input fasta file of OTU. Warning: FROGS Tree\nis only working on less than 10000 sequences!")), ToolInput(tag="in_biom_file", input_type=File(optional=True), prefix="--biomfile", doc=InputDocumentation(doc="Path to the abundance biom file.")), ToolInput(tag="in_out_tree", input_type=File(optional=True), prefix="--out-tree", doc=InputDocumentation(doc="Path to store resulting Newick tree file. [Default:\ntree.nwk]")), ToolInput(tag="in_html", input_type=File(optional=True), prefix="--html", doc=InputDocumentation(doc="Path to store resulting html file. [Default:\nsummary.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tree_Py_V0_1_0().translate("wdl", allow_empty_container=True)

