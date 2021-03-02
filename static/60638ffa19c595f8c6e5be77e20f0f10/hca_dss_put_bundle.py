from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Array, Int

Hca_Dss_Put_Bundle_V0_1_0 = CommandToolBuilder(tool="hca_dss_put_bundle", base_command=["hca", "dss", "put-bundle"], inputs=[ToolInput(tag="in_creator_uid", input_type=String(optional=True), prefix="--creator-uid", doc=InputDocumentation(doc="User ID who is creating this bundle.")), ToolInput(tag="in_files", input_type=Array(t=String(), optional=True), prefix="--files", doc=InputDocumentation(doc="This is a list of dictionaries describing each of the files. Each dictionary includes the fields: - The 'uuid' of a file already previously uploaded with 'PUT file/{uuid}'. - The 'version' timestamp of the file. - The 'name' of the file. This can be most anything, and is the name the file will have when downloaded. - The 'indexed' field, which specifies whether a file should be indexed or not.\nBundle manifests exceeding 20,000 files will not be included in the Elasticsearch index document.\nExample representing 2 files with dummy values: [{'uuid': 'ce55fd51-7833-469b-be0b-5da88ebebfcd',\n'version': '2017-06-16T193604.240704Z',\n'name': 'dinosaur_dna.fa',\n'indexed': False},\n{'uuid': 'ae55fd51-7833-469b-be0b-5da88ebebfca',\n'version': '0303-04-23T193604.240704Z',\n'name': 'dragon_dna.fa',\n'indexed': False}]")), ToolInput(tag="in_uuid", input_type=Int(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A RFC4122-compliant ID for the bundle.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to write to."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Put_Bundle_V0_1_0().translate("wdl", allow_empty_container=True)

