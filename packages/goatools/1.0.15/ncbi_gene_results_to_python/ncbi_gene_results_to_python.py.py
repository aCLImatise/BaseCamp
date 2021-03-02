from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Ncbi_Gene_Results_To_Python_Py_V0_1_0 = CommandToolBuilder(tool="ncbi_gene_results_to_python.py", base_command=["ncbi_gene_results_to_python.py"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Write current citation report to an ASCII text file.\n")), ToolInput(tag="in_ncbi_gene_tsv", input_type=String(), position=0, doc=InputDocumentation(doc="gene_result.tsv downloaded from NCBI Gene"))], outputs=[], container="quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncbi_Gene_Results_To_Python_Py_V0_1_0().translate("wdl")

