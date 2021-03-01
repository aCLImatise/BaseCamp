from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Raptor_Db_Subsample_V0_1_0 = CommandToolBuilder(tool="falconc_raptor_db_subsample", base_command=["falconc", "raptor-db-subsample"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__rdbfn_string", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="=, --rdb_fn=         string  REQUIRED  Path to the RaptorDB file.")), ToolInput(tag="in__genomesize_required", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="=, --genome_size=    int64   REQUIRED  Approximate genome size.")), ToolInput(tag="in__coverage_float", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="=, --coverage=       float   REQUIRED  Coverage to select from the input")), ToolInput(tag="in_random_seed", input_type=Boolean(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="=         int64   REQUIRED  Seed for random generation.")), ToolInput(tag="in__blocksizemb_float", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --block-size-mb=  float   REQUIRED  Block size of the output DB, in")), ToolInput(tag="in_raptor_db_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-u, --use-umc          bool    REQUIRED  Use Unique Molecular Coverage when")), ToolInput(tag="in_megabytes_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-a=, --alarms-fn=      string  ''        Optional JSON file to write SMRT Link"))], outputs=[], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Raptor_Db_Subsample_V0_1_0().translate("wdl")

