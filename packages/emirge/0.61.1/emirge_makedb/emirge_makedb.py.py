from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Directory, Float, File

Emirge_Makedb_Py_V0_1_0 = CommandToolBuilder(tool="emirge_makedb.py", base_command=["emirge_makedb.py"], inputs=[ToolInput(tag="in_build_database_default", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[SSU|LSU], --gene=[SSU|LSU]\nbuild database from this gene (SSU=Small Subunit rRNA;\nLSU=Large Subunit rRNA) default = SSU")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use for vsearch clustering of\ndatabase (default = use all available)")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="working directory for temporary files (default = /tmp)")), ToolInput(tag="in_release", input_type=Int(optional=True), prefix="--release", doc=InputDocumentation(doc="SILVA release number (default: current SILVA release)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="minimum reference sequence length (default = 1200)")), ToolInput(tag="in_max_len", input_type=Int(optional=True), prefix="--max-len", doc=InputDocumentation(doc="maximum reference sequence length (default = 2000)")), ToolInput(tag="in_id", input_type=Float(optional=True), prefix="--id", doc=InputDocumentation(doc="Cluster at this fractional identity level (default =\n0.97)")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="keep intermediary files (default: do not keep)")), ToolInput(tag="in_v_search", input_type=File(optional=True), prefix="--vsearch", doc=InputDocumentation(doc="path to vsearch binary (default: look in $PATH)")), ToolInput(tag="in_bowtie_build", input_type=File(optional=True), prefix="--bowtie-build", doc=InputDocumentation(doc="path to bowtie-build binary (default: look in $PATH)")), ToolInput(tag="in_silva_license_accepted", input_type=Boolean(optional=True), prefix="--silva-license-accepted", doc=InputDocumentation(doc="I have read and accepted the SILVA license.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Emirge_Makedb_Py_V0_1_0().translate("wdl", allow_empty_container=True)

