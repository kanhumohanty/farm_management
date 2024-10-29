class CropsController < ApplicationController
  def index
    @crops = [
      { name: 'Rice', description: 'Rice is a staple food for over half of the world\'s population.', image: 'https://images.unsplash.com/photo-1505471768190-275e2ad7b3f9?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
      { name: 'Betel Leaf', description: 'Widely used in traditional medicine and for chewing.', image: 'https://images.unsplash.com/photo-1649667219949-7959985a2572?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
      { name: 'Cashew', description: 'A popular nut known for its rich flavor and health benefits.', image: 'https://images.unsplash.com/photo-1721071881276-ff3607354ab8?q=80&w=1900&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
      { name: 'Peanuts', description: 'Rich in protein and commonly used in snacks and meals.', image: 'https://plus.unsplash.com/premium_photo-1669998297631-b31847eea2ea?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' },
      { name: 'Potato', description: 'Versatile and essential ingredient in many cuisines.', image: 'https://plus.unsplash.com/premium_photo-1663054727010-4a642cc9d2a1?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D' }
    ]
  end

  def show
    crop_name = params[:id]  # Get the crop name from the URL
    @crop = {
      "Rice" => "
Rice farming is the cultivation of rice, a staple crop grown primarily in warm, humid climates. It involves several stages: preparing fields (typically flooded, known as paddies, to control weeds), planting rice seedlings, managing water levels, and harvesting. Rice plants thrive in wet conditions, and controlled irrigation plays a key role in growth. Once the grains mature, they are harvested, dried, and processed. Rice farming is labor-intensive, especially in traditional methods, but advances in technology and sustainable practices are improving yields and efficiency.",
      "Betel Leaf" => "Betel leaf farming involves cultivating the leaves of the betel vine, which are used for chewing and in traditional medicine across Asia. The farming process is meticulous and typically requires a warm, humid environment with partial shade. Betel vines are often grown on trellises or bamboo structures for support, as they are climbers. Farmers prepare the soil with organic matter, maintain adequate moisture, and protect the plants from pests. Leaves are handpicked once they reach the desired size, with careful handling to maintain quality. This labor-intensive process yields aromatic leaves prized for their cultural and medicinal significance.",
      "Cashew" =>"
Cashew farming involves cultivating cashew trees, which thrive in tropical climates with well-drained sandy or loamy soils. Cashew trees are hardy and drought-resistant, making them well-suited to semi-arid regions. They begin producing nuts after 3-5 years, yielding cashew apples and seeds (cashew nuts). Farmers harvest the cashew apples when ripe, then separate, dry, and process the nuts. Cashew farming requires regular pruning and pest management to ensure healthy growth. The nuts undergo roasting to remove toxic shells, making them safe for consumption. Cashews are valued globally, both as nuts and for their by-products in various industries.",
      "Peanuts" => "
Peanut farming involves growing peanuts, or groundnuts, which are legumes that thrive in warm climates with sandy, well-drained soil. After planting peanut seeds, the plants grow low to the ground, with yellow flowers that eventually form pegs. These pegs penetrate the soil, where the peanuts develop underground. Peanuts require a growing season of 120-150 days, during which they need moderate rainfall and pest management. Once mature, the plants are pulled from the ground, and the peanuts are left to dry before harvesting. Known for their protein-rich seeds, peanuts are widely cultivated for use in food products, oils, and livestock feed.",
      "Potato" => "
Potato farming involves cultivating potatoes, a tuber crop that grows well in cool climates with fertile, well-drained, and slightly acidic soil. Farmers plant potato seed pieces, which are parts of the tuber with eyes that sprout. The plants grow leafy stems above ground, while tubers develop below ground. Potatoes require consistent moisture, regular hilling (covering the lower stems with soil to protect and encourage tuber growth), and pest control. After a growing period of about 90-120 days, potatoes are harvested, cured, and stored. Potatoes are a staple crop, valued for their nutritional content and versatility in cooking."
    }[crop_name]

    # Handle not found case if needed
    if @crop.nil?
      redirect_to crops_path, alert: "Crop not found"
    end
  end
end
