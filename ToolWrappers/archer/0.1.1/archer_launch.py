from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Archer_Launch_V0_1_0 = CommandToolBuilder(tool="archer_launch", base_command=["archer", "launch"], inputs=[ToolInput(tag="in_aws_bucket_name", input_type=Int(optional=True), prefix="--awsBucketName", doc=InputDocumentation(doc="the AWS S3 bucket name for data upload (default 'artic-archer-uploads-test')")), ToolInput(tag="in_aws_region", input_type=Int(optional=True), prefix="--awsRegion", doc=InputDocumentation(doc="the AWS region to use (default 'eu-west-2')")), ToolInput(tag="in_db_path", input_type=String(optional=True), prefix="--dbPath", doc=InputDocumentation(doc="location to store the Archer database (default '/root/.archer')")), ToolInput(tag="in_gr_pc_address", input_type=String(optional=True), prefix="--grpcAddress", doc=InputDocumentation(doc="address to announce on (default 'localhost')")), ToolInput(tag="in_gr_pc_port", input_type=Int(optional=True), prefix="--grpcPort", doc=InputDocumentation(doc="TCP port to listen to by the gRPC server (default '9090')")), ToolInput(tag="in_log_file", input_type=String(optional=True), prefix="--logFile", doc=InputDocumentation(doc="where to write the server log (if unset, STDERR used)")), ToolInput(tag="in_manifest_url", input_type=String(optional=True), prefix="--manifestURL", doc=InputDocumentation(doc="the ARTIC primer scheme manifest url (default 'https://raw.githubusercontent.com/artic-network/primer-schemes/master/schemes_manifest.json')")), ToolInput(tag="in_num_processors", input_type=Int(optional=True), prefix="--numProcessors", doc=InputDocumentation(doc="number of processors to use (-1 == all) (default -1)")), ToolInput(tag="in_num_workers", input_type=Int(optional=True), prefix="--numWorkers", doc=InputDocumentation(doc="number of concurrent request handlers to use (default 2)"))], outputs=[], container="quay.io/biocontainers/archer:0.1.1--he881be0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Archer_Launch_V0_1_0().translate("wdl")

