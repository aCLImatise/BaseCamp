from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Gnuvid_Database_Customizer_Py_V0_1_0 = CommandToolBuilder(tool="GNUVID_database_customizer.py", base_command=["GNUVID_database_customizer.py"], inputs=[ToolInput(tag="in_genbank_refseq", input_type=Boolean(optional=True), prefix="--GenBank_RefSeq", doc=InputDocumentation(doc="fna files from GenBank or RefSeq")), ToolInput(tag="in_pro_kk_a", input_type=Boolean(optional=True), prefix="--prokka", doc=InputDocumentation(doc="fna files from prokka")), ToolInput(tag="in_list_csv", input_type=File(optional=True), prefix="--list_csv", doc=InputDocumentation(doc="a file.csv of 3+ columns: file_name, old locustag, new\nlocustag and optionally metadata")), ToolInput(tag="in_individual_files", input_type=Boolean(optional=True), prefix="--individual_files", doc=InputDocumentation(doc="individual modified files\n")), ToolInput(tag="in_prefix_name", input_type=String(), position=0, doc=InputDocumentation(doc="prefix name for the output folder and the one\nconcatenated modified file")), ToolInput(tag="in_directory_path", input_type=String(), position=1, doc=InputDocumentation(doc="path to directory of fna, RAST txt or gff files"))], outputs=[], container="quay.io/biocontainers/gnuvid:2.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gnuvid_Database_Customizer_Py_V0_1_0().translate("wdl")

