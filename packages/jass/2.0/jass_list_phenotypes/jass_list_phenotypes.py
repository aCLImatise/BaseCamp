from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Jass_List_Phenotypes_V0_1_0 = CommandToolBuilder(tool="jass_list_phenotypes", base_command=["jass", "list-phenotypes"], inputs=[ToolInput(tag="in_in_it_table_path", input_type=File(optional=True), prefix="--init-table-path", doc=InputDocumentation(doc="path to the initial data file, default is the\nconfigured path (JASS_DATA_DIR/initTable.hdf5)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jass_List_Phenotypes_V0_1_0().translate("wdl", allow_empty_container=True)

