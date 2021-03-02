from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Builddatabase_V0_1_0 = CommandToolBuilder(tool="BuildDatabase", base_command=["BuildDatabase"], inputs=[ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="-dir", doc=InputDocumentation(doc="<dir containing fasta files *.fa, *.fasta,\n*.fast, *.FA, *.FASTA, *.FAST, *.dna,\nand  *.DNA >")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="The name of the database to create.")), ToolInput(tag="in_engine", input_type=String(optional=True), prefix="-engine", doc=InputDocumentation(doc="The name of the search engine we are using. I.e abblast/wublast or\nrmblast.")), ToolInput(tag="in_batch", input_type=File(optional=True), prefix="-batch", doc=InputDocumentation(doc="The name of a file which contains the names of fasta files to\nprocess. The files names are listed one per line and should be fully\nqualified.")), ToolInput(tag="in_line_dot", input_type=String(), position=0, doc=InputDocumentation(doc="- Providing the name of a directory containing FASTA files "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Builddatabase_V0_1_0().translate("wdl", allow_empty_container=True)

