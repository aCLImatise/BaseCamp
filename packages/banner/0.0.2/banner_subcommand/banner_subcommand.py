from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Banner_Subcommand_V0_1_0 = CommandToolBuilder(tool="banner_subcommand", base_command=["banner", "subcommand"], inputs=[ToolInput(tag="in_train", input_type=String(), position=0, doc=InputDocumentation(doc="Train takes a banner-matrix file from hulk and uses it to train a Random Forest Classifier")), ToolInput(tag="in_predict", input_type=String(), position=1, doc=InputDocumentation(doc="Predict collects sketches from STDIN and classifies them using a RFC")), ToolInput(tag="in_version", input_type=String(), position=2, doc=InputDocumentation(doc="Prints the banner version number and exits")), ToolInput(tag="in_subcommand", input_type=String(), position=0, doc=InputDocumentation(doc="Subcommand to run"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Banner_Subcommand_V0_1_0().translate("wdl", allow_empty_container=True)

