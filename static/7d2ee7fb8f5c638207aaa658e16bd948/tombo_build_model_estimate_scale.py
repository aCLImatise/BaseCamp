from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Tombo_Build_Model_Estimate_Scale_V0_1_0 = CommandToolBuilder(tool="tombo_build_model_estimate_scale", base_command=["tombo", "build_model", "estimate_scale"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information.")), ToolInput(tag="in_fast_fives_basedir", input_type=Int(), position=0, doc=InputDocumentation(doc="Directory containing fast5 files. All files ending in\n'fast5' found recursively within this base directory will be\nprocessed."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tombo_Build_Model_Estimate_Scale_V0_1_0().translate("wdl", allow_empty_container=True)

