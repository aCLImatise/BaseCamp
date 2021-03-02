from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Update_Db_Description_V0_1_0 = CommandToolBuilder(tool="anvi_update_db_description", base_command=["anvi-update-db-description"], inputs=[ToolInput(tag="in_description", input_type=File(optional=True), prefix="--description", doc=InputDocumentation(doc="A plain text file that contains some description about\nthe project. You can use Markdown syntax. The\ndescription text will be rendered and shown in all\nrelevant interfaces, including the anvi'o interactive\ninterface, or anvi'o summary outputs. (default: None)")), ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc="An anvi'o database."))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Update_Db_Description_V0_1_0().translate("wdl")

