from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Download_Eggnog_Data_Py_V0_1_0 = CommandToolBuilder(tool="download_eggnog_data.py", base_command=["download_eggnog_data.py"], inputs=[ToolInput(tag="in_install_diamond_database", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="Do not install the diamond database")), ToolInput(tag="in_assume__questions", input_type=Boolean(optional=True), prefix="-y", doc=InputDocumentation(doc="assume 'yes' to all questions")), ToolInput(tag="in_forces_download_exist", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="forces download even if the files exist")), ToolInput(tag="in_simulate_print_commands", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="simulate and print commands. Nothing is downloaded")), ToolInput(tag="in_quietmode", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="quiet_mode")), ToolInput(tag="in_data_dir", input_type=Boolean(optional=True), prefix="--data_dir", doc=InputDocumentation(doc="Directory to use for DATA_PATH."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Eggnog_Data_Py_V0_1_0().translate("wdl", allow_empty_container=True)

