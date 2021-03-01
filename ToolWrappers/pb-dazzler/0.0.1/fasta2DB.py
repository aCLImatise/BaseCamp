from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fasta2Db_V0_1_0 = CommandToolBuilder(tool="fasta2DB", base_command=["fasta2DB"], inputs=[ToolInput(tag="in_import_files_listed", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": import files listed 1/line in given file.")), ToolInput(tag="in_import_data_sequence", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": import data from stdin, use optiona name as data source.\n: otherwise, import sequence of specified files.\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta2Db_V0_1_0().translate("wdl", allow_empty_container=True)

