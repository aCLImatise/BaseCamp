from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ngsdimportomim_V0_1_0 = CommandToolBuilder(tool="NGSDImportOMIM", base_command=["NGSDImportOMIM"], inputs=[ToolInput(tag="in_gene", input_type=File(optional=True), prefix="-gene", doc=InputDocumentation(doc="OMIM 'mim2gene.txt' file from 'http://omim.org/downloads/'.")), ToolInput(tag="in_morbid", input_type=File(optional=True), prefix="-morbid", doc=InputDocumentation(doc="OMIM 'morbidmap.txt' file from 'http://omim.org/downloads/'.")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="If set, overwrites old data.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsdimportomim_V0_1_0().translate("wdl", allow_empty_container=True)

