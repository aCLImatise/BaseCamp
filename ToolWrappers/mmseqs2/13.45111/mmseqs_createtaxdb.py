from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int

Mmseqs_Createtaxdb_V0_1_0 = CommandToolBuilder(tool="mmseqs_createtaxdb", base_command=["mmseqs", "createtaxdb"], inputs=[ToolInput(tag="in_ncbi_tax_dump", input_type=Directory(optional=True), prefix="--ncbi-tax-dump", doc=InputDocumentation(doc="NCBI tax dump directory. The tax dump can be downloaded here 'ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz' []")), ToolInput(tag="in_tax_mapping_file", input_type=File(optional=True), prefix="--tax-mapping-file", doc=InputDocumentation(doc="File to map sequence identifier to taxonomical identifier []")), ToolInput(tag="in_tax_mapping_mode", input_type=Int(optional=True), prefix="--tax-mapping-mode", doc=InputDocumentation(doc="Map taxonomy based on sequence database 0: .lookup file 1: .source file [0]")), ToolInput(tag="in_tax_db_mode", input_type=Int(optional=True), prefix="--tax-db-mode", doc=InputDocumentation(doc="Create taxonomy database as: 0: .dmp flat files (human readable) 1: binary dump (faster readin) [1]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Createtaxdb_V0_1_0().translate("wdl")

