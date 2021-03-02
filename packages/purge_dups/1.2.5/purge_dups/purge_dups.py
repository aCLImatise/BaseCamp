from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Purge_Dups_V0_1_0 = CommandToolBuilder(tool="purge_dups", base_command=["purge_dups"], inputs=[ToolInput(tag="in_str_baselevel_coverage", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="STR      base-level coverage file [NULL]")), ToolInput(tag="in_str_cutoffs_file", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="STR      cutoffs file [NULL]")), ToolInput(tag="in_int_minimum_fraction", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="INT      minimum fraction of haploid/diploid/bad/repetitive bases in a sequence [.8]")), ToolInput(tag="in_int_minimum_alignment", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="INT      minimum alignment score [70]")), ToolInput(tag="in_int_minimum_max", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="INT      minimum max match score [200]")), ToolInput(tag="in_bool_rounds_chaining", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="BOOL     2 rounds chaining [FALSE]")), ToolInput(tag="in_int_minimum_matching", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="INT      minimum matching bases for chaining [500]")), ToolInput(tag="in_int_maximum_chaining", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="INT      maximum gap size for chaining [20K]")), ToolInput(tag="in_int_maximum_nd", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc="INT      maximum gap size for 2nd round chaining [50K]")), ToolInput(tag="in_int_minimum_chaining", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="INT      minimum chaining score for a match [10K]")), ToolInput(tag="in_int_maximum_extension", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="INT      maximum extension for contig ends [15K]")), ToolInput(tag="in_paf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Purge_Dups_V0_1_0().translate("wdl")

