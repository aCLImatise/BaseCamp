from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

O_Generate_Gephi_Network_File_V0_1_0 = CommandToolBuilder(tool="o_generate_gephi_network_file", base_command=["o-generate-gephi-network-file"], inputs=[ToolInput(tag="in_sample_mapping", input_type=File(optional=True), prefix="--sample-mapping", doc=InputDocumentation(doc="Providing a sample mapping file will make Gephi file\nmuch more useful.")), ToolInput(tag="in_unit_mapping", input_type=File(optional=True), prefix="--unit-mapping", doc=InputDocumentation(doc="Structurally, unit mapping is identical to sample\nmapping file, instead, it describes properties of\nunits.")), ToolInput(tag="in_sample_size", input_type=Int(optional=True), prefix="--sample-size", doc=InputDocumentation(doc="Sample node size. Default: 8")), ToolInput(tag="in_unit_size", input_type=Int(optional=True), prefix="--unit-size", doc=InputDocumentation(doc="Unit node size. Default: 2")), ToolInput(tag="in_min_abundance", input_type=Int(optional=True), prefix="--min-abundance", doc=InputDocumentation(doc="Minimum abundance of a unit to be included in the\nnetwork. It usually a good idea to give some cut-off\nsince each unit (whether it is an oligotype or an MED\nnode) is going to be a part of the network (total\nnumber of reads divided by 10,000 might be a good\nstart).")), ToolInput(tag="in_min_sum_normalized_percent", input_type=Int(optional=True), prefix="--min-sum-normalized-percent", doc=InputDocumentation(doc="This defines the minimum sum normalized percent for an\noligotype or MED node in a sample to form an edge in\nthe network. Sum normalization takes an oligotype or\nMED node, generates a vector from its percent\noccurence in all samples, then normalizes the percent\nabundances so the total of the vector adds up to 100%.\nThe default is 1, but it might be a good idea to set\nit to 0 for samples with a lot of samples (such as\nmore than 100 samples).")), ToolInput(tag="in_skip_sample_labels", input_type=Boolean(optional=True), prefix="--skip-sample-labels", doc=InputDocumentation(doc="Leave sample labels blank.")), ToolInput(tag="in_skip_unit_labels", input_type=Boolean(optional=True), prefix="--skip-unit-labels", doc=InputDocumentation(doc="Leave unit labels blank."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Generate_Gephi_Network_File_V0_1_0().translate("wdl", allow_empty_container=True)

