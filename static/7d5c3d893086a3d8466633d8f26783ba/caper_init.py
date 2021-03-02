from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Directory, Int

Caper_Init_V0_1_0 = CommandToolBuilder(tool="caper_init", base_command=["caper", "init"], inputs=[ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="Specify config file")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Prints all logs >= DEBUG level")), ToolInput(tag="in_gcp_service_account_key_json", input_type=File(optional=True), prefix="--gcp-service-account-key-json", doc=InputDocumentation(doc="Secret key JSON file for Google Cloud Platform service\naccount. This service account should have enough\npermission to Storage for client functions and\nStorage/Compute Engine/Genomics API/Life Sciences API\nfor server/runner functions.")), ToolInput(tag="in_local_loc_dir", input_type=Directory(optional=True), prefix="--local-loc-dir", doc=InputDocumentation(doc="Temporary directory to store Cromwell's intermediate\nbackend files. These files include backend.conf,\nworkflow_opts.json, imports.zip. and localized input\nJSON files due to deepcopying (recursive\nlocalization). Cromwell's MySQL/PostgreSQL DB password\ncan be exposed on backend.conf on this directory.\nTherefore, DO NOT USE /tmp HERE. This directory is\nalso used for storing cached files for\nlocal/slurm/sge/pbs backends.")), ToolInput(tag="in_tmp_gcs_bucket", input_type=Directory(optional=True), prefix="--tmp-gcs-bucket", doc=InputDocumentation(doc="Temporary directory to store cached files for gcp\nbackend. e.g. gs://my-bucket/caper-cache-dir.")), ToolInput(tag="in_tmp_s_three_bucket", input_type=Int(optional=True), prefix="--tmp-s3-bucket", doc=InputDocumentation(doc="Temporary directory to store cached files for aws\nbackend. e.g. s3://my-bucket/caper-cache-dir.\n"))], outputs=[], container="quay.io/biocontainers/caper:1.1.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Caper_Init_V0_1_0().translate("wdl")

