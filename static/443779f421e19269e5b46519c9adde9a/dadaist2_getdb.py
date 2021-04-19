from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dadaist2_Getdb_V0_1_0 = CommandToolBuilder(tool="dadaist2_getdb", base_command=["dadaist2-getdb"], inputs=[ToolInput(tag="in_printed_dot", input_type=String(), position=0, doc=InputDocumentation(doc="DOWNLOAD ONE OR MORE DATABASES\ndadaist2-getdb -d DATABASE_NAME [-o OUTPUT_DIR]\ndadaist2-getdb -d DB1 -d DB2 -d DB3 [-o OUTPUT_DIR]\ndadaist2-getdb -q QUERY_STRING"))], outputs=[], container="quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Getdb_V0_1_0().translate("wdl")

