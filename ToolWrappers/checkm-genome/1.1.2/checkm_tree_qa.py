from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Directory

Checkm_Tree_Qa_V0_1_0 = CommandToolBuilder(tool="checkm_tree_qa", base_command=["checkm", "tree_qa"], inputs=[ToolInput(tag="in_out_format", input_type=String(optional=True), prefix="--out_format", doc=InputDocumentation(doc="desired output: (default: 1)\n1. brief summary of genome tree placement\n2. detailed summary of genome tree placement including lineage-specific statistics\n3. genome tree in Newick format decorated with IMG genome ids\n4. genome tree in Newick format decorated with taxonomy strings\n5. multiple sequence alignment of reference genomes and bins")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="print results to file (default: stdout)")), ToolInput(tag="in_tab_table", input_type=Boolean(optional=True), prefix="--tab_table", doc=InputDocumentation(doc="print tab-separated values table")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="specify an alternative directory for temporary files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Tree_Qa_V0_1_0().translate("wdl", allow_empty_container=True)

