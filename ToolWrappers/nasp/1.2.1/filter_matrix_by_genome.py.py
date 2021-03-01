from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Filter_Matrix_By_Genome_Py_V0_1_0 = CommandToolBuilder(tool="filter_matrix_by_genome.py", base_command=["filter_matrix_by_genome.py"], inputs=[ToolInput(tag="in_in_matrix", input_type=File(optional=True), prefix="--in_matrix", doc=InputDocumentation(doc="/path/to/NASP_matrix [REQUIRED]")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out_prefix", doc=InputDocumentation(doc="prefix for output files [REQUIRED]")), ToolInput(tag="in_genomes", input_type=File(optional=True), prefix="--genomes", doc=InputDocumentation(doc="/path/to/genomes_file [new line delimited] [REQUIRED]")), ToolInput(tag="in_actions", input_type=String(optional=True), prefix="--actions", doc=InputDocumentation(doc="action to perform (keep, remove), defaults to keep\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Matrix_By_Genome_Py_V0_1_0().translate("wdl", allow_empty_container=True)

