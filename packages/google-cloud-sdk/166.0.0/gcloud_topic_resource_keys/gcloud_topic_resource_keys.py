from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gcloud_Topic_Resource_Keys_V0_1_0 = CommandToolBuilder(tool="gcloud_topic_resource_keys", base_command=["gcloud", "topic", "resource-keys"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Topic_Resource_Keys_V0_1_0().translate("wdl", allow_empty_container=True)

