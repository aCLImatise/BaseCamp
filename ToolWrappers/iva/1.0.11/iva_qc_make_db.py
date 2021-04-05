from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Iva_Qc_Make_Db_V0_1_0 = CommandToolBuilder(tool="iva_qc_make_db", base_command=["iva_qc_make_db"], inputs=[ToolInput(tag="in_add_to_ref", input_type=File(optional=True), prefix="--add_to_ref", doc=InputDocumentation(doc="Filename of Genbank IDs or GI numbers to be added to\ndatabase. Format is: whitespace separated list of GI\nnumbers on each line. One line defines one genome\n(e.g. flu is 8 segments, so put 8 GI numbers on one\nline for one flu reference)")), ToolInput(tag="in_skip_viruses", input_type=Boolean(optional=True), prefix="--skip_viruses", doc=InputDocumentation(doc="Do not run kraken-build --download-library viruses\nwhen building the database. If this option used, then\n--add_to_ref must also be used")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use [1]")), ToolInput(tag="in_minimizer_len", input_type=Int(optional=True), prefix="--minimizer_len", doc=InputDocumentation(doc="Number to pass to kraken-build minimizer_len option\n[13]")), ToolInput(tag="in_max_db_size", input_type=Int(optional=True), prefix="--max_db_size", doc=InputDocumentation(doc="Number to pass to kraken-build max_db_size option [3]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose")), ToolInput(tag="in_directory_name", input_type=String(), position=0, doc=InputDocumentation(doc="Name of output directory"))], outputs=[], container="quay.io/biocontainers/iva:1.0.11--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iva_Qc_Make_Db_V0_1_0().translate("wdl")

