from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, File

Create_Protein_Table_Py_V0_1_0 = CommandToolBuilder(tool="create_protein_table.py", base_command=["create_protein_table.py"], inputs=[ToolInput(tag="in_in_file_peptide", input_type=Array(t=File(), optional=True), prefix="--infile_peptide", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/eukulele:1.0.4--pyhcb32578_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Protein_Table_Py_V0_1_0().translate("wdl")

