from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ngsdimportgeneinfo_V0_1_0 = CommandToolBuilder(tool="NGSDImportGeneInfo", base_command=["NGSDImportGeneInfo"], inputs=[ToolInput(tag="in_constraint", input_type=File(optional=True), prefix="-constraint", doc=InputDocumentation(doc="gnomAD gene contraint file (download and unzip https://storage.googleapis.com/gnomad-public/release/2.1.1/constraint/gnomad.v2.1.1.lof_metrics.by_gene.txt.bgz).")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="If set, overwrites old data.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsdimportgeneinfo_V0_1_0().translate("wdl", allow_empty_container=True)

