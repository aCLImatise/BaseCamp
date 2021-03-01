from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Metasnv_Py_V0_1_0 = CommandToolBuilder(tool="metaSNV.py", base_command=["metaSNV.py"], inputs=[ToolInput(tag="in_db_ann", input_type=File(optional=True), prefix="--db_ann", doc=InputDocumentation(doc="Database gene annotation.")), ToolInput(tag="in_print_commands", input_type=Boolean(optional=True), prefix="--print-commands", doc=InputDocumentation(doc="Instead of executing the commands, simply print them")), ToolInput(tag="in_dir", input_type=String(), position=0, doc=InputDocumentation(doc="A metaSNP initialized project directory")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc="File with an input list of bam files, one file per")), ToolInput(tag="in_line", input_type=String(), position=2, doc=InputDocumentation(doc="REF_DB_FILE           reference multi-sequence FASTA file used for the")), ToolInput(tag="in_alignments_dot", input_type=String(), position=3, doc=InputDocumentation(doc="optional arguments:")), ToolInput(tag="in_out", input_type=String(), position=4, doc=InputDocumentation(doc="--threads INT         Number of jobs to run simmultaneously. Will create")), ToolInput(tag="in_differently_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--n_splits INT        Number of bins to split ref into"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metasnv_Py_V0_1_0().translate("wdl", allow_empty_container=True)

