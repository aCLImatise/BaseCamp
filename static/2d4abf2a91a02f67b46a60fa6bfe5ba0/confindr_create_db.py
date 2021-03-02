from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Confindr_Create_Db_V0_1_0 = CommandToolBuilder(tool="confindr_create_db", base_command=["confindr_create_db"], inputs=[ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--output_folder", doc=InputDocumentation(doc="Folder to first store temporary files, and eventually\nstore the created database.")), ToolInput(tag="in_input_folder", input_type=Directory(optional=True), prefix="--input_folder", doc=InputDocumentation(doc="Folder with your input files to try to find core\ngenes. Each gene should be in a FASTA file. Expected\nextension is .fasta")), ToolInput(tag="in_genus", input_type=String(optional=True), prefix="--genus", doc=InputDocumentation(doc="Name of genus you're creating a database for.")), ToolInput(tag="in_desired_number_genes", input_type=Int(optional=True), prefix="--desired_number_genes", doc=InputDocumentation(doc="Minimum number of genes you want to find.\n"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Folder to first store temporary files, and eventually\nstore the created database."))], container="quay.io/biocontainers/confindr:0.7.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Confindr_Create_Db_V0_1_0().translate("wdl")

