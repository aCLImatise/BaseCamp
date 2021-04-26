from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Synapse_Cp_V0_1_0 = CommandToolBuilder(tool="synapse_cp", base_command=["synapse", "cp"], inputs=[ToolInput(tag="in_destination_id", input_type=Int(optional=True), prefix="--destinationId", doc=InputDocumentation(doc="Synapse ID of project or folder where file will be\ncopied to.")), ToolInput(tag="in_set_provenance", input_type=String(optional=True), prefix="--setProvenance", doc=InputDocumentation(doc="Has three values to set the provenance of the copied\nentity-traceback: Sets to the source entityexisting:\nSets to source entity's original provenance (if it\nexists)None/none: No provenance is set")), ToolInput(tag="in_update_existing", input_type=Boolean(optional=True), prefix="--updateExisting", doc=InputDocumentation(doc="Will update the file if there is already a file that\nis named the same in the destination")), ToolInput(tag="in_skip_copy_annotations", input_type=Boolean(optional=True), prefix="--skipCopyAnnotations", doc=InputDocumentation(doc="Do not copy the annotations")), ToolInput(tag="in_exclude_types", input_type=Boolean(optional=True), prefix="--excludeTypes", doc=InputDocumentation(doc="[file table ...]\nAccepts a list of entity types (file, table, link)\nwhich determines which entity types to not copy.")), ToolInput(tag="in_skip_copy_wiki", input_type=Boolean(optional=True), prefix="--skipCopyWiki", doc=InputDocumentation(doc="Do not copy the wiki pages"))], outputs=[], container="quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Cp_V0_1_0().translate("wdl")

