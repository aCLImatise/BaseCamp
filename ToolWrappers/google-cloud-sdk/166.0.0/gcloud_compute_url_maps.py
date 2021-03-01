from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Gcloud_Compute_Url_Maps_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_url_maps", base_command=["gcloud", "compute", "url-maps"], inputs=[ToolInput(tag="in_add_host_rule", input_type=String(), position=0, doc=InputDocumentation(doc="Add a rule to a URL map to map hosts to a path matcher.")), ToolInput(tag="in_add_path_matcher", input_type=File(), position=1, doc=InputDocumentation(doc="Add a path matcher to a URL map.")), ToolInput(tag="in_create", input_type=String(), position=2, doc=InputDocumentation(doc="Create a URL map.")), ToolInput(tag="in_delete", input_type=String(), position=3, doc=InputDocumentation(doc="Delete URL maps.")), ToolInput(tag="in_describe", input_type=String(), position=4, doc=InputDocumentation(doc="Describe a URL map.")), ToolInput(tag="in_edit", input_type=String(), position=5, doc=InputDocumentation(doc="Modify URL maps.")), ToolInput(tag="in_invalidate_cdn_cache", input_type=String(), position=6, doc=InputDocumentation(doc="Invalidate specified objects for a URL map in Cloud CDN caches.")), ToolInput(tag="in_list", input_type=String(), position=7, doc=InputDocumentation(doc="List Google Compute Engine URL maps.")), ToolInput(tag="in_list_cdn_cache_invalidations", input_type=String(), position=8, doc=InputDocumentation(doc="List Cloud CDN cache invalidations for a URL map.")), ToolInput(tag="in_remove_host_rule", input_type=String(), position=9, doc=InputDocumentation(doc="Remove a host rule from a URL map.")), ToolInput(tag="in_remove_path_matcher", input_type=File(), position=10, doc=InputDocumentation(doc="Remove a path matcher from a URL map.")), ToolInput(tag="in_set_default_service", input_type=String(), position=11, doc=InputDocumentation(doc="Change the default service or default bucket of a URL map."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Url_Maps_V0_1_0().translate("wdl", allow_empty_container=True)

