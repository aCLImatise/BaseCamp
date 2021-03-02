from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bioportal_Csv2Obo_Pl_V0_1_0 = CommandToolBuilder(tool="bioportal_csv2obo.pl", base_command=["bioportal_csv2obo.pl"], inputs=[ToolInput(tag="in_csv_input_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="CSV input file")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=": bioportal_csv2obo.pl [options]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioportal_Csv2Obo_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

