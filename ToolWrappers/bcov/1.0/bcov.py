from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Bcov_V0_1_0 = CommandToolBuilder(tool="bcov", base_command=["bcov"], inputs=[ToolInput(tag="in_input_msa_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc=":        Input MSA file in the PSICOV format. A contact score matrix\nis internally computed using the PSICOV method (Jones et al., 2012).\nThis option conflicts with the -m option. REQUIRED if -m is not set")), ToolInput(tag="in_read_precomputed_matrix", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc=":        Read a pre-computed residue contact score matrix from file. This\noption conflicts with the -c option. REQUIRED if -a is not set")), ToolInput(tag="in_read_beta_strand", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=":        Read beta strand boundaries from file. REQUIRED.")), ToolInput(tag="in_write_predicted_map", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc=":        Write predicted beta contact map to file. REQUIRED.")), ToolInput(tag="in_write_predicted_pairing", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=":        Write predicted beta strand pairing to file. REQUIRED.")), ToolInput(tag="in_minimum_sequence_separation", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc=":         Minimum sequence separation for parallel strand pairing.\n0 = no threshold. OPTIONAL, default: 6")), ToolInput(tag="in_verbose_level_default", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc=":         Verbose level, 0/1 (default: 0)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcov_V0_1_0().translate("wdl", allow_empty_container=True)

